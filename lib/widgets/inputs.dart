
import 'package:flutter/material.dart';

class Input extends StatelessWidget {

  
  final String labelNombre;
  final String placeholder;
  final TextEditingController controller;

  final borde = OutlineInputBorder(borderRadius: BorderRadius.circular(40.0));

  Input({
    super.key,
    required this.labelNombre,
    required this.placeholder, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: placeholder,
          label: Text(
            labelNombre,
            style: const TextStyle(
                color: Color.fromRGBO(0, 26, 78, 1),
                fontWeight: FontWeight.bold),
          ),
          isDense: true,
          focusColor: const Color.fromRGBO(0, 26, 78, 1),
          enabledBorder: borde.copyWith(
              borderSide:
                  const BorderSide(color: Color.fromRGBO(248, 249, 250, 1))),
          focusedBorder: borde.copyWith(
              borderSide:
                  const BorderSide(color: Color.fromRGBO(0, 26, 78, 1))),
          errorBorder:
              borde.copyWith(borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder:
              borde.copyWith(borderSide: const BorderSide(color: Colors.red)),
        ),
      ),
    );
  }
}
