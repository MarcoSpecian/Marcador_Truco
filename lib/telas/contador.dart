import 'package:flutter/material.dart';
import 'package:contador_truco/telas/regras.dart';

class Contador extends StatefulWidget {
  Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int vitorianos = 0;
  int vitoriaeles = 0;
  int nospontos = 0;
  int elespontos = 0;
  //Variavel para a msg do escuro
  String get escuroMsg {
    if (elespontos == 11 && nospontos == 11) {
      return "Mão de Ferro/Escuro";
    } else if ((elespontos == 11 && nospontos != 11) ||
        (elespontos != 11 && nospontos == 11)) {
      return "Mão de 11";
    }
    return "";
  }

  // Nós pontos
  void nosmais1() {
    setState(() {
      if (nospontos != 11) {
        nospontos++;
      } else {
        vitorianos++;
        nospontos = 0;
        elespontos = 0;
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
      if (nospontos <= 8) {
        nospontos += 3;
      } else {
        vitorianos++;
        nospontos = 0;
        elespontos = 0;
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

  // Eles pontos
  void elesmais1() {
    setState(() {
      if (elespontos != 11) {
        elespontos++;
      } else {
        vitoriaeles++;
        elespontos = 0;
        nospontos = 0;
      }
    });
  }

  void elesmenos1() {
    setState(() {
      if (elespontos != 0) {
        elespontos--;
      }
    });
  }

  void elesmais3() {
    setState(() {
      if (elespontos <= 8) {
        elespontos += 3;
      } else {
        vitoriaeles++;
        elespontos = 0;
        nospontos = 0;
      }
    });
  }

  void elesmenos3() {
    setState(() {
      if (elespontos >= 0 && elespontos <= 3) {
        elespontos = 0;
      } else {
        elespontos -= 3;
      }
    });
  }

  // Zerar pontos e vitórias
  void zerarP() {
    setState(() {
      elespontos = 0;
      nospontos = 0;
    });
  }

  void zerarV() {
    setState(() {
      vitoriaeles = 0;
      vitorianos = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Botão de somar
    final ButtonStyle btnStyleGreen = ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.green[700],
      textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      minimumSize: Size(90, 50),
    );

    // Botão de subtrair
    final ButtonStyle btnStyleRed = ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.red[700],
      textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      minimumSize: Size(90, 50),
    );

    // Botões de zerar
    final ButtonStyle btnStyleZerar = ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Colors.orangeAccent, // laranja
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      minimumSize: Size(150, 50),
    );

    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
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
      drawer: const NavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texto quando esta 11x11
            Expanded(
              child: Center(
                child: Text(
                  "$escuroMsg",
                  style: TextStyle(
                    fontSize: 28,
                    color: const Color.fromARGB(255, 0, 255, 170),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // NÓS
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
                            style: TextStyle(
                              fontSize: 28,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "$nospontos",
                            style: TextStyle(fontSize: 28, color: Colors.black),
                          ),
                          Text(
                            "Vitórias: $vitorianos",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: nosmais1,
                      child: Text("+1"),
                      style: btnStyleGreen,
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: nosmenos1,
                      child: Text("-1"),
                      style: btnStyleRed,
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: nosmais3,
                      child: Text("+3"),
                      style: btnStyleGreen,
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: nosmenos3,
                      child: Text("-3"),
                      style: btnStyleRed,
                    ),
                  ],
                ),

                // ELES
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
                            style: TextStyle(fontSize: 28, color: Colors.red),
                          ),
                          Text(
                            "$elespontos",
                            style: TextStyle(fontSize: 28, color: Colors.red),
                          ),
                          Text(
                            "Vitórias: $vitoriaeles",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: elesmais1,
                      child: Text("+1"),
                      style: btnStyleGreen,
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: elesmenos1,
                      child: Text("-1"),
                      style: btnStyleRed,
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: elesmais3,
                      child: Text("+3"),
                      style: btnStyleGreen,
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: elesmenos3,
                      child: Text("-3"),
                      style: btnStyleRed,
                    ),
                  ],
                ),
              ],
            ),

            // Botões de zerar
            SizedBox(height: 60),
            Column(
              children: [
                ElevatedButton(
                  onPressed: zerarP,
                  child: Text("Zerar Pontos"),
                  style: btnStyleZerar,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: zerarV,
                  child: Text("Zerar Vitórias"),
                  style: btnStyleZerar,
                ),
              ],
            ),
            SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[buildHeader(context), buildMenuItems(context)],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color: Colors.black,
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
  );
  Widget buildMenuItems(BuildContext context) => Container(
    color: Colors.black,
    height: 945, // deixar o expanded com fundo preto
    padding: EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: Icon(Icons.home, color: Colors.white), // <- branco também
          title: Text(
            "Home",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onTap: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Contador()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.menu_book,
            color: Colors.white,
          ), // <- branco também
          title: Text(
            "Regras",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onTap: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => RegrasPage()));
          },
        ),
      ],
    ),
  );
}
