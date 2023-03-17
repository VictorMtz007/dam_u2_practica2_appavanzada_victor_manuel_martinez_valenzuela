import 'package:flutter/material.dart';

class AcercaDe extends StatefulWidget {
  const AcercaDe({Key? key}) : super(key: key);

  @override
  State<AcercaDe> createState() => _AcercaDeState();
}

class _AcercaDeState extends State<AcercaDe> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        SizedBox(height: 50,),
        Image.asset('assets/Perfil.jpg',width: 200, height: 200,),
        const Text("(C) RESERVADOS", style: TextStyle(fontSize: 30, color: Colors.white54),textAlign: TextAlign.center,),
        const Text("Víctor Manuel Martínez Valenzuela", style: TextStyle(fontSize: 24, color: Colors.purpleAccent),textAlign: TextAlign.center,),
        const Text("No. Ctrl: 17401014", style: TextStyle(fontSize: 20, color: Colors.purpleAccent),textAlign: TextAlign.center,),
        const Text("INSTITUTO TECNONOLIGO DE TEPIC", style: TextStyle(fontSize: 15, color: Colors.white54),textAlign: TextAlign.center,),
      ],
    );
  }
}
