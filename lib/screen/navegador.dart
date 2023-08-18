import 'package:apptower/screen/espacios.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Navegador());

class Navegador extends StatelessWidget {
  const Navegador({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apptower - menu',
      home: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            // child: CircleAvatar(
            //   backgroundImage: NetworkImage(
            //       'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAI4AAACOCAMAAADQI8A6AAAA0lBMVEX///8XJ0EUY5wUJUAgK0Td3+EACDOfpKoADDIAWZe9v8UAFjb///2htcuBhZAAXprx9fZcYGp0mbf4+fh4e35gZ3Xl5ukAAC0MIDwAACULETUAACoAV5jq8fEAGjsAUpLLzdIAABXP3+a70d4uNk0ATZGyyNfo7/aSlp5KfaomaqE9eKOusbZaYHBkZ28ABTc9QlcwOklCTl5tcn4AAB+ctcQpbZ5mjbONqsEASZRAdqnK1+R7orytyM+Ioby7zNFMg6cAAAAWXY4AQZAAP4ROVWsAelQWAAAHXklEQVR4nO2afXeaWBDGrxCVK5eXcjeAK28BQfElm41VqNommzbf/yvtzPVlTbV7zu6RkD94etpaU09+mRmemTtASKNGjRo1atSoUaNGjRo1atTo/4nVDXAi+z6qG+FE9vCP/kPE68bYi/85nLtBcBtByurPmf9409bVlhz051HdLBCbR2VBEAeAVIxQnSFi7Fbp3SMOSg6cRVQbC4jf9iP+6YADCpTXCKNTT4T0u9+IeYoDQLuU1SCm3431n3FkObiroaihYvVB1z6LjogQXPbvnq7x3StpX8SBor6bvTfNZ/32VzitVqf7vjRcWdgfCef3XoPT4DQ4DU4NOPZZC60RZ45zzcfB6RHs7DP+EXD62LPjJb4e3wW144xNwsowXT1BwqK549aLA2XjF54kGV4RA1x3qNSLQ2KDGsAjGdQaQUXrslwbDiSolKiRZ4WBQJOSk/ZNXTgwJ4/yNM0TxgSOZKRbViMOSaSwSODVZiUJGVaN0SHll9WGQ5BKLzVqxWHwa7Rab/D1RppksSV5tUaHZdMElzlmOV3yROO+toZLrC4cc5kxDFJsaYyU1FtlhG2KsKgHh9tizWVmECH7GW2Q5hvC/Ky2ZOHvNkBtJoYRGsIGfXivxisLxLcpNYp4Z4Pp1q8XZ/Qc0jzmBxsM6/MdvNYzijYIdriq13cEjrml2MYhYVSqGQcq2V7lCAOhkb62vxkXbFBu3b1XdLgGMAxDtM5YVppMyymlb3Hc4L2CY5bCk0lSZNCzwAY1wsEG3+Cow+h9aAgXaSJ+Bv08nmKewmkCg+HTPwOG7CwAeGnF77JAFd/Ch0E5e6H0BevGEHV9wHHVGYdMeoZUxOz4garFLerRYiN8hxoHG5RbykOEcYNJMS52M9F74MTrkEI69jYoedYuWW5ngXGjhmTk8Pf6Zbqp+lYO3nTIpO8FdE7sW6e+Iwu7sSi+NYVyz0ZW+pyQSvfwcI0XPwofTzZWCqPOCY7aw85KdwGbPGUZGVml98JZ1K6KhbB4nYsifVpNNqNygkB7HKVHEmMXLykHy16SUUlGgG52P/WqiA9jXBMXEoQG0pBtTZYVnkGPOBrdD/M5Bm+ibQnRcP6Y/fUYXT9jzF/G2ENZYiXQswwPjljM3k4u4bBEK2GcNgUO0Qfq+No00LDET2gKG8zRBukUXvrJzzjAAaWMV+D62cSPwNedCniEfIiPFkKZTPCUPt0wco4zebG+Qu2wUhLRIQtXHvSqgMEAcQsrZj8NSpZ/niy/9Kal/w1OZTscPWi5j2Y1PPEqPbVBurPBt7VDNs+TFDKlHXHwP1SBU1IqWmQmHQ7F5zgcaoeXhqTtosPuEef61YOLne8YGbiSv3jeqQ2e1g5wCBvUpB8mfsgeQhNR9evjJCsLSxlCk8dmmb+1wSNOnk1TawQ2yMW5h8wcaPfKlXEYzFw7GzSL6YZklsmSIvWkS75jlqm3LWH0EThDXNcNrj0l2qWAAS+OIWmhEW5N4per4gIO1E4y9ba+KOUxLutk+cq9i/tiYPAz8ObNGg8SdLqEKorPkiV9M9EGn9eTFeBEYrfqzqtp7PAN2BLbOa6bvBz3Kz/jrHIvz9AGM8CxRapa/cps0IfGOdn6+1NofsEGWbI2rA3UTsL8GxGcYH7tWSxCW4V6jidhWMbsaIPntfMMNmhNf+AsYr92xEyvXHvqmUVEnIq36YswN+1og+fJirGFfoWZp+0GONXLg2vfW28/4p/ML1LhJbg3oL+0QWppGTFj0mvtNvLOtT3HVPHnYwl2TIjRMixivgSkyzYYwwgLR5xFf3fgcRbXpYEmqELyeYlLdghNAeeoZeHz2JrQi9MgT2LWe9g/2+Po1y7jtvNgE/trLAZmbbsBY/YMY8vhap6clbK3gk/Yen+XKHlw/Wa16AxtbmK3AhuEqTARpxoqaZwx+y2OgZ7jj39X9idT9/pPiEBLdiPxiolpcAnzl7GbBvGweYJjhDm8M3tw9qf2jhxdnYb0lMN8wPCmxHNKJ+XOBo1wGh/nnTRcgwf43ZvB/haXO9DNCk590ARlp73neZqERjk6ORRjdGSnR5ZFbLK2PlT2MLIyrOSEJW7AukPkYeTbF4SBhJ3YYNBXHvCrfnf+uXOAUdVKQkP2I0Jw08OxXRIwozVd43aAeqHFbH1mE27P5jfq8UZkoN5WdBqG0hS3F90/FhGMGfgTL9Mi9rNcyq0yE0NQNJ63nOCwBJPdu8dKOvhO+yEBSnM4juw3psbtqKf/6fRV97iQkxWl4if2xoPDJlLpDOcLvTsDdbvjxe3jUBkop/eKXSVYVP2QLvv0z91g2Q2UjuMMBk5HCVy3dbJTlmX18+PYrn7tZc6V01X2RbmKMly0KzlsnomN++q/AMmu0x/qvfdhEbL1YUeV3yKJf7mqEzzcdiu7rn8JNLt1Bh1VhYoRClRVcQb94WIW2TU9qmz3xvrifv76Op/fL/Rxt6rV338Q49w0Of8oj9wf9AGet2/UqFGjRo0aNWrUqFGjRo3+v/4G9wPKrx2npg4AAAAASUVORK5CYII='),
            // ),
          ),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: const Text(
            "Navegador",
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
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(children: const [
            Opcion(
                titulo: "Espacios", widget: Espacios(), icono: Icons.apartment),
            Opcion(
                titulo: "Salir",
                widget: Text("jeje"),
                icono: Icons.logout),
          ]),
        ),
      ),
    );
  }
}

// inicio widget de opcion

class Opcion extends StatelessWidget {
  final String titulo;
  final Widget widget;
  final IconData icono;

  const Opcion({
    super.key,
    required this.titulo,
    required this.widget,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          title: Text(titulo),
          leading: Icon(
            icono,
            color: const Color.fromRGBO(0, 26, 78, 1),
          ),
          trailing:
              const Icon(Icons.navigate_next), // Icono en la parte derecha

          onTap: () {
            final route = MaterialPageRoute(builder: (context) => widget);
            Navigator.push(context, route);
          },
        ),
      ),
    );
  }
}
// fin widget de opcion
