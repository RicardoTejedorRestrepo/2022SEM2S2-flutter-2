//import 'dart:ffi';
//import 'dart:html';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double peso = 88.0;
  int edad = 27;
  double valueSlider= 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de masa corporal"),
      ),
      body: Column(
        children: [
          Expanded(flex: 3,
            child: Container(
            child: Row(
              children: [
                Expanded(child: 
                Padding(padding: const EdgeInsets.all(15),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.man,
                color: Colors.white,
                size: 200,),
                Text("Hombre", style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 14, 1, 66),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),)),
                Expanded(child: Padding(padding: const EdgeInsets.all(15),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.woman,
                color: Colors.white,
                size: 200,),
                Text("Mujer", style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 14, 1, 66),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),))
              ],
            ),
          )),
          Expanded(flex: 3,
            child: Padding(padding: const EdgeInsets.all(15),
                child: Container(
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text("Estatura", style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),),                        
                        Slider(value: valueSlider,
                              activeColor: Color.fromARGB(255, 14, 1, 66),
                              inactiveColor: Color.fromARGB(255, 255, 255, 255),
                              min: 50,
                              max: 250,
                              divisions: 200,
                              label: valueSlider.round().toString(),
                               onChanged: (double value) {
                                   setState(() {
                                     valueSlider = value;
                                   });}),
                        Text(valueSlider.round().toString() + " cm", style: TextStyle(color: Colors.black45, fontSize: 50, fontWeight: FontWeight.bold),),  
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),)),
                Expanded(flex: 3,
                  child: Container(
            child: Row(
              children: [
                Expanded(child: Padding(padding: const EdgeInsets.all(15),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Peso", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                      Text(peso.toString()+" Kg", style: TextStyle(color: Colors.black45, fontSize: 50, fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 40,
                            onPressed: (){
                              setState(() {
                                peso += 1;
                              });
                            },
                            icon: Icon(Icons.add_circle)),
                          IconButton(
                            iconSize: 40,
                            onPressed: (){
                              setState(() {
                                if(peso > 0.0){
                                  peso -= 1;
                                }
                              });
                            },
                            icon: Icon(Icons.remove_circle))
                        ],
                      )
                  ]),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),)),
                Expanded(child: Padding(padding: const EdgeInsets.all(15),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Edad", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                      Text(edad.toString(), style: TextStyle(color: Colors.black45, fontSize: 50, fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 40,
                            onPressed: (){
                              setState(() {
                                edad += 1;
                              });
                            },
                            icon: Icon(Icons.add_circle)),
                            IconButton(
                            iconSize: 40,
                            onPressed: (){
                              setState(() {
                                if(edad > 0){
                                  edad -= 1;
                                }
                              });
                            },
                            icon: Icon(Icons.remove_circle))
                        ],
                      )
                  ]),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),))
              ],
            ),
          )),
          GestureDetector(
            onTap: () {
              double valorIMC = peso /((valueSlider/100) * (valueSlider/100));
              String estado ="";
              Color colorEstado = Colors.black;
              String msj = "";

              if(valorIMC < 18.5){
                estado = "Bajo Peso";
                colorEstado = Colors.orange;
                msj = "Tu peso corporal con relacion a la estatura es baja";
              }
              if(valorIMC >= 18.5 && valorIMC <24.9){
                estado = "Normal";
                colorEstado = Colors.green;
                msj = "Tu peso es Normal ¡Buen Trabajo!!";
              }
              if(valorIMC > 25 && valorIMC <29.9){
                estado = "Sobrepeso";
                colorEstado = Color.fromARGB(255, 255, 89, 0);
                msj = "Tienes Sobrepeso, ten cuidado!! cuida tu ingesta calorica";
              }
              if(valorIMC > 30 && valorIMC < 34.9){
                estado = "Obesidad 1";
                colorEstado = Color.fromARGB(255, 255, 0, 0);
                msj = "OJO!! estas en Obesidad grado 1, Cuidate";
              }
              if(valorIMC > 35 && valorIMC < 39.9){
                estado = "Obesidad 2";
                colorEstado = Color.fromARGB(255, 200, 0, 0);
                msj = "Lo sentimos, el Mensaje esta en proceso";
              }
              if(valorIMC > 40  && valorIMC < 49.9){
                estado = "Obesidad 3";
                colorEstado = Color.fromARGB(255, 150, 0, 0);
                msj = "Lo sentimos, el Mensaje esta en proceso";
              }
              if(valorIMC > 50){
                estado = "Obesidad 4";
                colorEstado = Color.fromARGB(255, 100, 0, 0);
                msj = "Lo sentimos, el Mensaje esta en proceso";
              }
              Navigator.push(context, MaterialPageRoute(builder: ((context) => DetallePage(valorIMC: valorIMC, estado: estado, colorEstado: colorEstado, msj:msj))));
            },
                child: Container(
                  height: 80,
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("CALCULAR", style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),)
        ],
      ),
    );
  }
}
