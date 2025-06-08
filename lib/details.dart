import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String id;
  final String nombre;
  final String apPaterno;
  final String apMaterno;
  final String edad;
  final String fechaNacimiento;
  final String puesto;
  final String salario;
  final String curp;

  const Details({
    Key? key,
    required this.id,
    required this.nombre,
    required this.apPaterno,
    required this.apMaterno,
    required this.edad,
    required this.fechaNacimiento,
    required this.puesto,
    required this.salario,
    required this.curp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade800,
        title: const Text("Detalles del Empleado"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <String>[
    "ID: $id",
    "Nombre: $nombre",
    "Apellido Paterno: $apPaterno",
    "Apellido Materno: $apMaterno",
    "Edad: $edad",
    "Fecha de Nacimiento: $fechaNacimiento",
    "Puesto: $puesto",
    "Salario: $salario",
    "CURP: $curp",
  ].map((String e) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(e, style: const TextStyle(fontSize: 16)),
      )).toList(),
),

          ),
        ),
      ),
    );
  }
}
