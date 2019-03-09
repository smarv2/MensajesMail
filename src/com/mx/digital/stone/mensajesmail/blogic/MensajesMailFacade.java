/*
 * (#)mensajesMail.java 1.00 04/01/2018
 * 
 * Copyright (c) 2018 SURA Mexico. Derechos reservados. https://www.suramexico.com/afore/
 */
package com.mx.digital.stone.mensajesmail.blogic;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.mx.digital.stone.mensajesmail.dao.MensajesMailDAO;
import com.mx.digital.stone.mensajesmail.utils.Constantes;
import com.mx.digital.stone.mensajesmail.utils.Utilerias;
import com.mx.digital.stone.mensajesmail.vo.MensajesMailVO;

/**
 * Mario Alan Ramirez Vazquez.
 *
 * @author MXI01020253A
 * @version 1.00, 04/01/2018
 */
public class MensajesMailFacade {

    /**
     * Campo LOG de tipo Logger.
     */
    protected static final Logger LOG = Logger.getLogger(MensajesMailFacade.class);

    /**
     * Metodo main.
     *
     * @param args {@code String[]}
     */
    public static void main(final String[] args) {
        LOG.info("<<Inicia proceso \"MensajesMail\" "
                + Utilerias.dateToString(new Date(), "dd/MM/yyyy HH:mm:ss") + ">>");
        try {
            consultaCorreos();
        } catch (Exception e) {
            LOG.error("Error en \"MensajesMail\"", e);
        }
        LOG.info("<<Termina proceso \"MensajesMail\" "
                + Utilerias.dateToString(new Date(), "dd/MM/yyyy HH:mm:ss") + ">>");
    }

    /**
     * Metodo consultaCorreos.
     *
     * @throws Exception en caso de error.
     */
    private static void consultaCorreos() throws Exception {

        //Se obitenen correos sin enviar.
        LOG.info("Obteniendo correos sin enviar.");
        List<MensajesMailVO> listaMensajes;
        MensajesMailDAO mensajesMailDAO = new MensajesMailDAO();
        listaMensajes = mensajesMailDAO.getCorreosSinEnviar();

        LOG.info("Tamaño de la lista de correos sin enviar: " + listaMensajes.size());

        if (listaMensajes.size() > 0) {
            //Se envian correos
            enviaCorreos(listaMensajes);
        } else {
            LOG.info("No hay mensajes por enviar.");
        }

    }

    /**
     * Metodo enviaCorreos.
     *
     * @param listaMensajes {@code List<MensajesMailVO>}
     * @throws Exception
     */
    private static void enviaCorreos(final List<MensajesMailVO> listaMensajes) throws Exception {
        MensajesMailDAO mensajesMailDAO = new MensajesMailDAO();
        EnvioMailFacade envioMailFacade = new EnvioMailFacade();
        //Se itera la lista
        for (MensajesMailVO mensajesMailVO : listaMensajes) {
            try {
                //Se envia mensaje
                LOG.info("Se envia mensaje: " + mensajesMailVO.getMensaje() + " a "
                        + mensajesMailVO.getDestinatarios());
                
                envioMailFacade.SendMail(mensajesMailVO.getDestinatarios(), mensajesMailVO.getAsunto(), mensajesMailVO.getMensaje());
                

                //Se actualiza a enviado exitoso.
                mensajesMailDAO.actualizaMensajesMail(Constantes.ENVIO_EXITOSO, mensajesMailVO.getIdMensajesMail());

            } catch (Exception e) {
                //Se actualiza a enviado con error.
                mensajesMailDAO.actualizaMensajesMail(Constantes.ENVIO_FALLIDO, mensajesMailVO.getIdMensajesMail());
            }

        }
    }
}
