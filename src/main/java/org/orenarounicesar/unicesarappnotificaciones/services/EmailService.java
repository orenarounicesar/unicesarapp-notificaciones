package org.orenarounicesar.unicesarappnotificaciones.services;

import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.orenarounicesar.unicesarappnotificaciones.models.Email;
import org.orenarounicesar.unicesarappnotificaciones.models.ResponseString;
import org.orenarounicesar.unicesarappnotificaciones.repositories.EmailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmailService {
    
    @Autowired
    private EmailRepository emailRepository;

    public int agregarEmail(Email email) {
        return emailRepository.agregarEmail(email);
    }

    public List<Email> getEmails() {
        return emailRepository.getEmails();
    }

    public ResponseString enviarEmail(Email email) {
        if (email.getEmailDestino() != null && !email.getEmailDestino().isEmpty() && !email.getEmailDestino().equals("no refiere")) {
            if ( send(email) ) {
                actualizarConfirmacionEnvio(email);
                return new ResponseString( "Mensaje enviado a " + email.getEmailDestino() );
            }
        }
        return new ResponseString( "ERROR");
    }
    
    private void actualizarConfirmacionEnvio(Email email) {
        agregarEmail(
            new Email(email.getCodigoEstudianteAsignatura(), email.getEmailOrigen(), null, email.getEmailDestino(), email.getEmailAsunto(), null, null)
        );
    }
    
    private boolean send(Email email) {
        try {
            Properties properies = new Properties();
            // properies.put("mail.smtp.host", "smtp.gmail.com");
            // properies.setProperty("mail.smtp.starttls.enable", "true");
            // properies.setProperty("mail.smtp.port", "587");
            // properies.setProperty("mail.smtp.user", email.getEmailOrigen());
            // properies.setProperty("mail.smtp.auth", "true");
            // properies.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");

            properies.put("mail.smtp.host", "smtp.gmail.com");
            properies.put("mail.smtp.port", "465");
            properies.put("mail.smtp.auth", "true");
            properies.put("mail.smtp.starttls.enable", "true");
            properies.put("mail.smtp.starttls.required", "true");
            properies.put("mail.smtp.ssl.protocols", "TLSv1.2");
            properies.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            properies.put("mail.smtp.user", email.getEmailOrigen());

            Session session = Session.getDefaultInstance(properies, null);
            BodyPart texto = new MimeBodyPart();
            texto.setText(email.getEmailCuerpo());
            
            MimeMultipart multiParte = new MimeMultipart();
            multiParte.addBodyPart(texto);
            
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email.getEmailOrigen()));
            if (email.getEmailDestino() != null)
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(email.getEmailDestino()));
            message.setSubject(email.getEmailAsunto());
            message.setContent(multiParte);
            
            Transport t = session.getTransport("smtp");
            t.connect(email.getEmailOrigen(), email.getEmailOrigenPassword());
            t.sendMessage(message, message.getAllRecipients());
            t.close();
            return true;
        } catch (MessagingException ex) {
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, "Error enviando email", ex);
            return false;
        } 
    }
}
