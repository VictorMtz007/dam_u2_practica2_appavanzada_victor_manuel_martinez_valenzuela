import 'package:flutter/material.dart';
import 'package:dam_u2_practica2_appavanzada_victor_manuel_martinez_valenzuela/principal.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(50),
      children: [
        const Text("Bienvenido a Vida Fit", style: TextStyle(fontSize: 35, color: Colors.purpleAccent), textAlign: TextAlign.center,),
        SizedBox(height: 20,),
        Image.asset('assets/Fit.png',width: 200, height: 200,),
        SizedBox(height: 30,),
        const Text("Hola, esta es una app que calculara datos importantes para tu vida saludable.", style: TextStyle(fontSize: 25, color: Colors.white), textAlign: TextAlign.justify,),
        SizedBox(height: 10,),
        const Text("Esta pagina es de bienvenida, la siguiente una calculadora", style: TextStyle(fontSize: 25, color: Colors.white), textAlign: TextAlign.justify,),
        SizedBox(height: 10,),
        const Text("La ultima pagina contiene informacion del creador de la app", style: TextStyle(fontSize: 25, color: Colors.white), textAlign: TextAlign.justify,),
        SizedBox(height: 20,),
        FilledButton(onPressed: (){
          showDialog(
              context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text("Manten tu determinación"),
                  content: Text("Pon el corazón, mente y el alma incluso en los actos más pequeños. Ese es el secreto del éxito.\n-Awami Sivananda",),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("Salir"))
                  ],
                );
              });
        }, child: const Text("+ Motivacion +", style: TextStyle(fontSize: 20),)),
      ],
    );
  }
}
