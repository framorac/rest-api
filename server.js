const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const mysql = require('mysql');

/**
 * Parsea respuesta a JSON
 */
app.use(bodyParser.json());

/**
 * Conectar a BD MySQL/MariaDB
 */
const conn = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'adminbd',
    database: 'integracion_servicios'
});


conn.connect((err) => {
    if (err) throw err;
    console.log('Conectado a Base de Datos...');
});

/**
 * Listar habitaciones disponibles
 */
app.get('/api/v1/habitaciones/disponibles', (req, res) => {
    let sql = 'SELECT * FROM habitaciones WHERE isDisponible=1';
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(JSON.stringify({ "status": 200, "error": null, "resultado": results }));
    });
});

/**
 * Agregar nueva habitacion
 */
app.post('/api/v1/habitaciones/agregar', (req, res) => {
    let data = {
        cantidadCamas: req.body.cantidadCamas,
        valorNoche: req.body.valorNoche,
        isDisponible: req.body.isDisponible
    };

    if ((req.body.cantidadCamas < 1) || (req.body.cantidadCamas > 3)) {
        res.send(JSON.stringify({ "status": "error", "mensaje": "La cantidad de camas es entre 1 y 3"}));
    } else if (req.body.valorNoche < 1) {
        res.send(JSON.stringify({ "status": "error", "mensaje": "Valor por noche debe ser mayor a cero"}));
    } else {
        let sql = "INSERT INTO habitaciones SET ?";
        let query = conn.query(sql, data, (err, results) => {
            if (err) throw err;
            res.send(JSON.stringify({ "status": 200, "mensaje": "registro correcto"}));
        });
    }
});


/**
 * Configura Puerto del servidor
 */
app.listen(3000, () => {
    console.log('Server started on port 3000...');
});