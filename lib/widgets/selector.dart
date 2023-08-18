import 'package:flutter/material.dart';

class Selector extends StatelessWidget {
  List<String> lista = [];
  final String titulo;

  Selector({super.key, required this.lista, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 30, 35, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
                color: Color.fromRGBO(0, 26, 78, 1),
                fontWeight: FontWeight.bold),
          ),
          DropdownButton(
              isExpanded: true,
              // value: const Text("Seleccione una opcion"),
              items: lista.map((tipos) {
                return DropdownMenuItem(value: tipos, child: Text(tipos));
              }).toList(),
              onChanged: (tipos) {
                print("Tipo espacio: $tipos");
              }),

          
        ],
      ),
    );
  }
}
