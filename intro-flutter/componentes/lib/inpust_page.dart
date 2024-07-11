import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomInput(
              label: 'Nombre',
            ),
            CustomInput(
              label: 'Correo',
            ),
            CustomInput(
              label: 'Telefono',
            ),
            CustomInput(
              label: 'Contraseña',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: ,
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.teal),
      maxLength: 20,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Ingrese su nombre',
        label: Text(label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        // suffix: Icon(Icons.person),
        errorText: null, //'El nombre es obligatorio',
        suffixIcon: Icon(Icons.remove_red_eye),
        prefixIcon: Icon(Icons.person),
      ),
    );
  }
}
