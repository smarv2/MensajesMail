/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mx.digital.stone.mensajesmail.blogic;

import com.mx.digital.stone.mensajesmail.utils.Constantes;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.apache.log4j.Logger;

/**
 *
 * @author MXI01020253A
 */
public class EnvioMailFacade {
    
    /**
     * Campo LOG de tipo Logger.
     */
    protected static final Logger LOG = Logger.getLogger(EnvioMailFacade.class);
    
    /**
     * Metodo SendMail.
     * @param To
     * @param Subject
     * @param Mensage 
     */
    public void SendMail(final String To, final String Subject, final String Mensage) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "mail.digitalstonemx.com");
        props.put("mail.smtp.port", "26");
        
        //Variables de conexion;
        final String Username = "robot@digitalstonemx.com";
        final String PassWord = Constantes.PASSWORD_SMTP;

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(Username, PassWord);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("mario.ramirezs@digitalstonemx.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(To));
            //message.setFileName("C:\\applogs\\logMensajesMailBatch.log");
            message.setSubject(Subject);
            
            message.setText(Mensage);
            message.setReplyTo(InternetAddress.parse("contacto@digitalstonemx.com"));

            Transport.send(message);
            LOG.info("mensaje enviado.");

        } catch (MessagingException e) {
            LOG.error("Ocurrio un error al enviar el correo." , e);
            throw new RuntimeException(e);
        }
    }
    
}
