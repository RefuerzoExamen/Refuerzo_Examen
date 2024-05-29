import { pool } from "../config/db.mysql.js";

export const mostrarCita = async(req, res)=>{
    let id = req.params['id'];
    try {
        const respuesta = await pool.query(`CALL sp_mostrarCita(${id});`);
        res.json({"res":respuesta})
    } catch (error) {
        res.json({"error":err})
    }
}

export const listarCita = async(req, res)=>{
    try {
        const respuesta = await pool.query(`CALL sp_listarCita();`);
        res.json({"res":respuesta})
    } catch (error) {
        res.json({"error":err})
    }
}

export const crearCita = async(req, res)=>{
    let descripcion = req.body.descripcion;
    try {
        const respuesta = await pool.query(`CALL sp_crearCita('${descripcion}');`);
        if (respuesta[0].affectedRows==1) {
            res.json({"res":"Cita creada"})
        } else {
            res.json({"error":"No se puede crear la cita"})
        }
    } catch (error) {
        res.json({"error":err})
    }
}

export const modificarCita = async(req, res)=>{
    let id = req.body.id;
    let descripcion = req.body.descripcion;
    try {
        const respuesta = await pool.query(`CALL sp_modificarCita(${id}, '${descripcion}');`);
        if (respuesta[0].affectedRows==1) {
            res.json({"res":"Cita modificada"})
        } else {
            res.json({"error":"No se puede modificar la cita"})
        }
    } catch (error) {
        res.json({"error":err})
    }
}

export const eliminarCita = async(req, res)=>{
    let id = req.body.id;
    try {
        const respuesta = await pool.query(`CALL sp_EliminarCita(${id});`);
        if (respuesta[0].affectedRows==1) {
            res.json({"res":"Cita eliminada"})
        } else {
            res.json({"error":"No se puede eliminar la cita"})
        }
    } catch (error) {
        res.json({"error":err})
    }
}