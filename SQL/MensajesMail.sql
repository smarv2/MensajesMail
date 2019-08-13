create table mensajes_mail (idMensajesMail INT NOT NULL AUTO_INCREMENT,
destinatarios varchar(255),
mensaje varchar(255),
fechaRegistro datetime,
fechaEnvio datetime,
envado smallint,
PRIMARY KEY (idMensajesMail)
);

insert into mensajes_mail (destinatarios,mensaje,fechaRegistro,fechaEnvio,envado) values ('mario.ramireza@suramexico.com','Hola',CURDATE(),null,0);
insert into mensajes_mail (destinatarios,mensaje,fechaRegistro,fechaEnvio) values ('mario.ramireza@suramexico.com','Hola ke ase?',NOW(),null);

insert into mensajes_mail (destinatarios, asunto, mensaje, fechaRegistro) values ('mario.ramireza@suramexico.com', 'Prueba de correo', 'Ola ke ase? probando el envio de korreo o ke ase?', NOW());
insert into mensajes_mail (destinatarios, asunto, mensaje, fechaRegistro) values ('yessenia.gutierrez@suramexico.com', 'Prueba de correo', 'Ola ke ase? probando el envio de korreo o ke ase?', NOW());

select * from mensajes_mail

update mensajes_mail set adjuntos = null, enviado = 0