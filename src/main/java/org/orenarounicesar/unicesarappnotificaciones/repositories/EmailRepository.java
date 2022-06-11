package org.orenarounicesar.unicesarappnotificaciones.repositories;

import java.util.List;

import org.orenarounicesar.unicesarappnotificaciones.models.Email;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class EmailRepository {
    
    private JdbcTemplate plantilla;

    public EmailRepository(JdbcTemplate plantilla) {
        this.plantilla = plantilla;
    }
    
    public int agregarEmail(Email email) {
        return plantilla.update(
            "INSERT INTO emails ("
                + "codigo_estudiante_asignatura, "
                + "email_origen, "
                + "email_destino, "
                + "email_asunto, "
                + "fecha"
            + ") VALUES (?, ?, ?, ?, now()) " , 
            new Object[]{email.getCodigoEstudianteAsignatura(), email.getEmailOrigen(), email.getEmailDestino(), email.getEmailAsunto()}
        );
    }

    public List<Email> getEmails() {
        return plantilla.query(
            "SELECT "
                + "a.codigo_email, "
                + "a.codigo_estudiante_asignatura, "
                + "a.email_origen, "
                + "a.email_destino, "
                + "a.email_asunto, "
                + "a.fecha "
            + "FROM emails a ", 
            (rs, rowNum) -> new Email(
                rs.getInt("codigo_email"), 
                rs.getInt("codigo_estudiante_asignatura"), 
                rs.getString("email_origen"), 
                "", 
                rs.getString("email_destino"), 
                rs.getString("email_asunto"),
                "", 
                rs.getTimestamp("fecha")
            )
        );
    }
}
