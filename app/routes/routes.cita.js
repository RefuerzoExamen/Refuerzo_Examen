import { Router } from "express";
import { crearCita, eliminarCita, listarCita, modificarCita, mostrarCita } from "../controllers/controllers.cita.js";

const rutaCita = Router();

rutaCita.get("/cita/:id", mostrarCita);
rutaCita.get("/cita", listarCita);
rutaCita.post("/cita", crearCita);
rutaCita.put("/cita", modificarCita);
rutaCita.delete("/cita", eliminarCita);


export default rutaCita;