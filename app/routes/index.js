import { Router } from "express";
import rutaCita from "./routes.cita.js";

const ruta = Router();

ruta.use("/api", rutaCita);

export default ruta;