import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int vitoria = 0;
  int nospontos = 0;

  void nosmais1() {
    setState(() {
      if (nospontos != 11) {
        nospontos++;
        print(nospontos);
      } else {
        vitoria++;
        nospontos = 0;
      }
    });
  }

  void nosmenos1() {
    setState(() {
      if (nospontos != 0) {
        nospontos--;
      }
    });
  }

  void nosmais3() {
    setState(() {
      if (nospontos <= 7) {
        nospontos += 3;
        print(nospontos);
      } else {
        vitoria++;
        nospontos = 0;
      }
    });
  }

  void nosmenos3() {
    setState(() {
      if (nospontos >= 0 && nospontos <= 3) {
        nospontos = 0;
      } else {
        nospontos -= 3;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle btnStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 122, 31),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "♦️PLACAR DO TRUCO♥️",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ======== NÓS ========
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Nós",
                        style: TextStyle(fontSize: 28),
                      ),
                      Text(
                        "$nospontos",
                        style: TextStyle(fontSize: 28),
                      ),
                      Text("Vitórias: $vitoria"),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: nosmais1, child: Text("+1"), style: btnStyle),
                ElevatedButton(onPressed: nosmenos1, child: Text("-1"), style: btnStyle),
                ElevatedButton(onPressed: nosmais3, child: Text("+3"), style: btnStyle),
                ElevatedButton(onPressed: nosmenos3, child: Text("-3"), style: btnStyle),
                SizedBox(height: 120),
              ],
            ),

            // ======== ELES ========
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Eles",
                        style: TextStyle(fontSize: 28),
                      ),
                      Text(
                        "0",
                        style: TextStyle(fontSize: 28),
                      ),
                      Text("Vitórias: 0"),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text("+1"), style: btnStyle),
                ElevatedButton(onPressed: () {}, child: Text("-1"), style: btnStyle),
                ElevatedButton(onPressed: () {}, child: Text("+3"), style: btnStyle),
                ElevatedButton(onPressed: () {}, child: Text("-3"), style: btnStyle),
                SizedBox(height: 120),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
