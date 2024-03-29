var express = require('express');
var router = express.Router();

var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function(req, res, next) {
  var novedades = await novedadesModel.getNovedades();
novedades= novedades.splice(0,5); //selecciona los primeros 5 del array
novedades= novedades.map(novedad => {
  if (novedad.img_id) {
    const imagen= cloudinary.url(novedad.img_id, {
      width: 460,
      crop:'fill'
    });
    return {
      ...novedad,
      imagen
  }
} else {
  return {
    ...novedad,
    imagen:'/images/noimage.jpg'
  }
}
});
  res.render('index', {
    novedades
  });
});

router.post('/', async (req, res, next) => {
  console.log(req.body); // ¿Hay datos?

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var telefono = req.body.telefono;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'ambayona9@gmail.com',
    subject: 'Contacto desde la web',
    html: `El usuario ${nombre} ${apellido} se contactó a través de la web y quiere más información en este correo: ${email}. Además, hizo el siguiente comentario: ${mensaje}. Su teléfono es ${telefono}.`
  };

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transporter.sendMail(obj);
  res.render('index', {
    title: 'express',
    message: 'Mensaje enviado correctamente'
  });
});

module.exports = router;

