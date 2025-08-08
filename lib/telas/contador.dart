import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int vitoria=0;
  int nospontos=0;


  void nosmais1(){
    setState(() {
      if(nospontos != 11){
        nospontos++;
        print(nospontos);
      }
      else{
        vitoria++;
        nospontos=0;
      }
    });    
  }

  void nosmenos1(){
    setState(() {
      if(nospontos!=0){
        nospontos--;
      }
    });
  }
//arrumar pq esta chegando a 12 e só depois ele reinicia
  void nosmais3(){
    setState(() {
      if(nospontos < 11){
        nospontos+=3;
        print(nospontos);
      }
      else{
        vitoria++;
        nospontos=0;
      }
    });    
  }

  void nosmenos3(){
    setState(() {
      if(nospontos==0||nospontos==1||nospontos==2||nospontos==3) {
        nospontos=0;
      }
      else{
        nospontos-=3;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 83, 28),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "PLACAR DO TRUCO",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centraliza verticalmente
          children: [
            Text(
              "Nós",
              style: TextStyle(
                fontSize: 28,
              ),
            ),


            Container(
              child: 
              Text(
                "$nospontos",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),

            Text("Vitórias: $vitoria"),

            ElevatedButton(onPressed: nosmais1, child: Text("+1")),
            ElevatedButton(onPressed: nosmenos1, child: Text("-1")),
            ElevatedButton(onPressed: nosmais3, child: Text("+3")),
            ElevatedButton(onPressed: nosmenos3, child: Text("-3")),

          ],
        ),
      ),
    );
  }
}