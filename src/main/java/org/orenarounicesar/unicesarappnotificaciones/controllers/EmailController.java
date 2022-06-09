package org.orenarounicesar.unicesarappnotificaciones.controllers;

import java.util.List;

import org.orenarounicesar.unicesarappnotificaciones.models.Email;
import org.orenarounicesar.unicesarappnotificaciones.models.ResponseString;
import org.orenarounicesar.unicesarappnotificaciones.services.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/notificaciones")
public class EmailController {
    
    @Autowired
    private EmailService emailService;


    @GetMapping()
    public List<Email> getEmails() {
        return emailService.getEmails();
    }

    @PostMapping
    public ResponseString enviarEmail(@RequestBody Email email) {
        return emailService.enviarEmail(email);
    }

}
