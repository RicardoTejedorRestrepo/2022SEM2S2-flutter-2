import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
  DetallePage({super.key, required this.valorIMC, required this.estado, required this.colorEstado, required this.msj});

  double valorIMC;
  String estado;
  Color colorEstado;
  String msj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle del Calculo"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("Resultados", style: TextStyle(color: Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),),
          ),  
              Expanded(
                child: Padding(padding: const EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                                    child: Text(estado, style: TextStyle(color: colorEstado, fontSize: 30, fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                                    child: Text(valorIMC.toStringAsFixed(2) + "  IMC", style: TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                                    child: Text(msj, style: TextStyle(color: Colors.white, fontSize: 20)),
                                  )
                                ],
                                
                              )
                            ],
                          ),
                        ),
                  )
              )
        ],
      )
            
      );
  }      
}
