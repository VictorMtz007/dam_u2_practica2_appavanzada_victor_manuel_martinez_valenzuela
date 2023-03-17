import 'dart:math';

import 'package:flutter/material.dart';

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  final peso = TextEditingController();
  final altura = TextEditingController();
  final edad = TextEditingController();
  String ResultadoIMC = "";
  String ResultadoFCM = "";
  String NivelPeso = "";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(50),
      children: [
        SizedBox(height: 20,),
        const Text("Rellena los datos:", style: TextStyle(fontSize: 25, color: Colors.black),),
        SizedBox(height: 20,),
        TextField(
          controller: peso,
          decoration: InputDecoration(
            labelText: "Peso (kg):",
            prefixIcon: Icon(Icons.monitor_weight_outlined, color: Colors.purple,)),
        ),
        SizedBox(height: 20,),
        TextField(
          controller: altura,
          decoration: InputDecoration(
              labelText: "Altura (m):",
              prefixIcon: Icon(Icons.height, color: Colors.purple,)),
        ),
        SizedBox(height: 20,),
        TextField(
          controller: edad,
          decoration: InputDecoration(
              labelText: "Edad:",
              prefixIcon: Icon(Icons.date_range, color: Colors.purple,)),
        ),
        SizedBox(height: 20,),
        FilledButton(onPressed: (){
          double p = double.parse(peso.text);
          double a = double.parse(altura.text);
          int e = int.parse(edad.text);

          double imc = p/pow(a, 2);
          int fcm = 220-e;

          setState(() {
            ResultadoFCM = "Frecuancia Cardiaca Maxima = ${fcm}";
            ResultadoIMC = "Indice de Masa Corporal = ${imc}";

            (imc < 18.5) ? NivelPeso = "Esta en la categoria de Peso Bajo"
                : (imc >= 18.5) &&  (imc < 25) ? NivelPeso = "Esta en la categoria de Peso Salubale"
                : (imc >= 25) &&  (imc < 30) ? NivelPeso = "Esta en la categoria de Sobrepeso"
                : NivelPeso = "Esta en la categoria de Obesidad";
          });

        }, child: const Text("Calcular", style: TextStyle(fontSize: 20),)),
        SizedBox(height: 60,),
        Text("${ResultadoFCM}", style: TextStyle(fontSize: 15, color: Colors.black),),
        SizedBox(height: 20,),
        Text("${ResultadoIMC}", style: TextStyle(fontSize: 15, color: Colors.black),),
        Text("${NivelPeso}", style: TextStyle(fontSize: 15, color: Colors.black),),
      ],
    );
  }
}
