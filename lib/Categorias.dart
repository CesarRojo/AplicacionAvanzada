import 'package:flutter/material.dart';

List categorias = ["Seleccionar", "Deportivo", "Hombre", "Mujer", "Niño", "Niña"];

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  State<Categorias> createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  String _categoriaElegida = categorias.first;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        Text("Selecciona la categoria \n a la que quieras ir", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightGreen),textAlign: TextAlign.center,),
        SizedBox(height: 20,),
        DropdownButtonFormField(
          value: _categoriaElegida,
          items: categorias.map((valor) {
            return DropdownMenuItem(child: Text(valor), value: valor,);
          }).toList(),
            onChanged: (valor){
              setState(() {
                _categoriaElegida = valor.toString();
              });
            },
        )
      ],
    );
  }
}
