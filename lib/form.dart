import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _idController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apPaternoController = TextEditingController();
  final _apMaternoController = TextEditingController();
  final _edadController = TextEditingController();
  final _fechaNacimientoController = TextEditingController();
  final _puestoController = TextEditingController();
  final _salarioController = TextEditingController();
  final _curpController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nombreController.dispose();
    _apPaternoController.dispose();
    _apMaternoController.dispose();
    _edadController.dispose();
    _fechaNacimientoController.dispose();
    _puestoController.dispose();
    _salarioController.dispose();
    _curpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade800,
        title: const Text("Formulario Empleado"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(controller: _idController, label: "ID", icon: Icons.badge, keyboardType: TextInputType.number),
            MyTextField(controller: _nombreController, label: "Nombre", icon: Icons.person),
            MyTextField(controller: _apPaternoController, label: "Apellido Paterno", icon: Icons.person),
            MyTextField(controller: _apMaternoController, label: "Apellido Materno", icon: Icons.person),
            MyTextField(controller: _edadController, label: "Edad", icon: Icons.cake, keyboardType: TextInputType.number),
            MyTextField(controller: _fechaNacimientoController, label: "Fecha de Nacimiento", icon: Icons.date_range),
            MyTextField(controller: _puestoController, label: "Puesto", icon: Icons.work),
            MyTextField(controller: _salarioController, label: "Salario", icon: Icons.attach_money, keyboardType: TextInputType.number),
            MyTextField(controller: _curpController, label: "CURP", icon: Icons.fingerprint),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo.shade800,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(
                      id: _idController.text,
                      nombre: _nombreController.text,
                      apPaterno: _apPaternoController.text,
                      apMaterno: _apMaternoController.text,
                      edad: _edadController.text,
                      fechaNacimiento: _fechaNacimientoController.text,
                      puesto: _puestoController.text,
                      salario: _salarioController.text,
                      curp: _curpController.text,
                    ),
                  ),
                );
              },
              child: const Text(
                "Enviar Formulario",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final TextInputType? keyboardType;

  const MyTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.icon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: Colors.indigo),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
