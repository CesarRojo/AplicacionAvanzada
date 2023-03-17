import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        Image.asset('Imagenes/nacoste.jpg', width: 150, height: 150,),
        SizedBox(height: 30,),
        Text("Bienvenido a tienda \n Nacoste", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red,),textAlign: TextAlign.center,),
        SizedBox(height: 80,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Oferta"),
                      content: Text("¡Aprovecha esta gran oferta!"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Ok"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Oferta", style: TextStyle(color: Colors.black)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
