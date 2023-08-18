import 'package:flutter/material.dart';

import '../widgets/inputs.dart';
import '../widgets/selector.dart';
import 'navegador.dart';

void main() => runApp(const LogIn());

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

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LoginState();
}

class _LoginState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crear espacio',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(248, 249, 250, 1),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 300,
                child: Image.network("https://i.ibb.co/KL47c1Y/Logo-Apptower.png")) ,
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Input(
                        labelNombre: "Usuario",
                        placeholder: "Escribe aquí nombre de usuario",
                        controller: nombreEspacioController,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Input(
                        labelNombre: "Contraseña",
                        placeholder: "Escribe aquí tu contraseña",
                        controller: areaEspacioController,
                      ),
                    ),
                    const SizedBox(height: 20), // Espacio antes del botón
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(0, 26, 78, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          elevation:
                              4.0, // Ajusta el valor según tu preferencia
                          minimumSize: const Size(double.infinity,
                              50), // Ancho y alto mínimos del botón
                        ),
                        onPressed: () {
                          final route = MaterialPageRoute(
                            builder: (context) => const Navegador(),
                          );
                          Navigator.push(context, route);

                          setState(() {});
                        },
                        child: const Text("Ingresar"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
