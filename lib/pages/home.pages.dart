import 'dart:ffi';
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double peso = 0.0;
  int edad = 0;

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
                      Text("Estatura"),
                      Text("166cm"),
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
              Navigator.push(context, MaterialPageRoute(builder: ((context) => DetallePage())));
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
