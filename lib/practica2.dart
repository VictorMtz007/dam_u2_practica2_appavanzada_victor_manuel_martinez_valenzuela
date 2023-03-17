import 'package:flutter/material.dart';

import 'package:dam_u2_practica2_appavanzada_victor_manuel_martinez_valenzuela/principal.dart';
import 'package:dam_u2_practica2_appavanzada_victor_manuel_martinez_valenzuela/imc.dart';
import 'package:dam_u2_practica2_appavanzada_victor_manuel_martinez_valenzuela/acercade.dart';

class Practica2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Practica2();
  }
}

class _Practica2 extends State<Practica2> {
  int _indice = 0;

  void _cambioIndice(int indice) {
    setState(() {
      _indice = indice;
    });
  }

  final List<Widget> _paginas = [
    Principal(),
    Imc(),
    AcercaDe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _indice == 1 ? Colors.white54 : Colors.black54,
      appBar: AppBar (title: const Text("Vida Fit"), centerTitle: true,),
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar (
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Bienvenida"),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center,), label: "Datos"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded,), label: "Acerca de"),
        ],
        currentIndex: _indice,
        showUnselectedLabels: false,
        onTap: _cambioIndice,
        iconSize: 25,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
      ),
    );
  }

}