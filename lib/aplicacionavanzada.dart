import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Carrito.dart';
import 'Categorias.dart';
import 'Inicio.dart';

class AplicacionAvanzada extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AplicacionAvanzada();
  }
}

class _AplicacionAvanzada extends State<AplicacionAvanzada>{
  int _indice = 0;

  void _cambiarIndice(int indice){
    setState(() {
      _indice = indice;
    });
  }

  final List<Widget> _paginas = [
    Inicio(),
    Categorias(),
    Carrito(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nacoste", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Categorias"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: "Carrito"),
        ],
        currentIndex: _indice,
        onTap: _cambiarIndice,
        backgroundColor: Colors.lightGreen,
        iconSize: 30,
      ),
    );
  }
}