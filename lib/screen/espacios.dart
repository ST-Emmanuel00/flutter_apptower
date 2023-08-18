import 'package:flutter/material.dart';

import '../widgets/inputs.dart';
import '../widgets/selector.dart';
import 'navegador.dart';

void main() => runApp(const Espacios());

final TextEditingController nombreEspacioController = TextEditingController();
final TextEditingController areaEspacioController = TextEditingController();
final TextEditingController capacidadEspacioController =
    TextEditingController();

// ... Otro código ...

final List<String> tiposEspacios = [
  "APARTAMENTO",
  "SALON SOCIAL",
  "ZONA HUMEDA"
];
final List<String> estados = ["ACTIVO", "INACTIVO"];

class Espacios extends StatefulWidget {
  const Espacios({super.key});

  @override
  State<Espacios> createState() => _EspaciosState();
}

class _EspaciosState extends State<Espacios> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crear espacio',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            // child: CircleAvatar(
            //   backgroundImage: NetworkImage(
            //       'data:image/png;base64,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'),
            // ),
          ),
          backgroundColor: const Color.fromRGBO(248, 249, 250, 1),
          title: const Text(
            "Espacios",
            style: TextStyle(
              color: Color.fromRGBO(0, 26, 78, 1),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
            // IconButton(
            //   icon: const Icon(Icons.undo),
            //   color: const Color.fromRGBO(236, 236, 236, 1),
            //   onPressed: () {
            //     final route =
            //         MaterialPageRoute(builder: (context) => const Navegador());
            //     Navigator.push(context, route);
            //   },
            // )
          ],
        ),
        backgroundColor: const Color.fromRGBO(248, 249, 250, 1),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 10),
          child: Container(
            color: const Color.fromRGBO(255, 255, 255, 1),
            child: ListView(children: [
              Selector(lista: tiposEspacios, titulo: "Tipo de espacio"),
              Input(
                labelNombre: "Nombre espacio",
                placeholder: "Ejemplo: 101, S101",
                controller: nombreEspacioController,
              ),
              Input(
                labelNombre: "Area espacio",
                placeholder: "Ejemplo: 35, 70.5",
                controller: areaEspacioController,
              ),
              Input(
                labelNombre: "Capacidad espacio",
                placeholder: "Ejemplo: 5, 1",
                controller: capacidadEspacioController,
              ),
              Selector(
                lista: estados,
                titulo: "Estado",
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica para el botón de "Crear"
                    print("Botón Crear presionado");

                    String nombreEspacio = nombreEspacioController.text;
                    String areaEspacio = areaEspacioController.text;
                    String capacidadEspacio = capacidadEspacioController.text;

                    // Imprimir los valores en la consola
                    print("Nombre de espacio: $nombreEspacio");
                    print("Área de espacio: $areaEspacio");
                    print("Capacidad de espacio: $capacidadEspacio");

                    setState(() {});
                  },
                  child: const Text("Crear espacio"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: BackButton(
                  onPressed: () {
                    final route = MaterialPageRoute(
                        builder: (context) => const Navegador());
                    Navigator.push(context, route);
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
