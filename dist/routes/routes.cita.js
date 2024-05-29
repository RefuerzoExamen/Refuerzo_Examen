"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = require("express");
var _controllersCita = require("../controllers/controllers.cita.js");
var rutaCita = (0, _express.Router)();
rutaCita.get("/cita/:id", _controllersCita.mostrarCita);
rutaCita.get("/cita", _controllersCita.listarCita);
rutaCita.post("/cita", _controllersCita.crearCita);
rutaCita.put("/cita", _controllersCita.modificarCita);
rutaCita["delete"]("/cita", _controllersCita.eliminarCita);
var _default = exports["default"] = rutaCita;