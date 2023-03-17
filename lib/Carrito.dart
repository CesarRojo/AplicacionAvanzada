import 'package:flutter/material.dart';

class Carrito extends StatefulWidget {
  const Carrito({Key? key}) : super(key: key);

  @override
  State<Carrito> createState() => _CarritoState();
}

class _CarritoState extends State<Carrito> {
  bool _seleccionado1 = false;
  bool _seleccionado2 = false;
  bool _seleccionado3 = false;
  bool _seleccionado4 = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        Text("Seleccione las prendas a comprar", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.lightGreen),textAlign: TextAlign.center,),
        SizedBox(height: 15,),
        CheckboxListTile(
            title: Text("Camiseta Hombre Talla G"),
            value: _seleccionado1,
            onChanged: (bool? valor){
              setState(() {
                _seleccionado1 = valor!;
              });
            }),
        CheckboxListTile(
            title: Text("Short Niño Talla M"),
            value: _seleccionado2,
            onChanged: (bool? valor){
              setState(() {
                _seleccionado2 = valor!;
              });
            }),
        CheckboxListTile(
            title: Text("Vestido Mujer Talla Ch"),
            value: _seleccionado3,
            onChanged: (bool? valor){
              setState(() {
                _seleccionado3 = valor!;
              });
            }),
        CheckboxListTile(
            title: Text("Falda Niña Talla M"),
            value: _seleccionado4,
            onChanged: (bool? valor){
              setState(() {
                _seleccionado4 = valor!;
              });
            }),
        SizedBox(height: 300,),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Compra realizada con exito"),
                  content: Text("¡Gracias por tu compra!"),
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
          child: Text("Comprar", style: TextStyle(color: Colors.black)),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
          ),
        ),
      ],
    );
  }
}
