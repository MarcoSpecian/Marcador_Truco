import 'package:flutter/material.dart';

class RegrasPage extends StatelessWidget {
  RegrasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: const Color(0xFF0D1B2A), // Fundo escuro
    appBar: AppBar(
      title: const Text(
        "♦️REGRAS♥️",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.black,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    body: Container(
      color: const Color(0xFF0D1B2A), // Fundo escuro
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "🎲 Regras do Truco Paulista",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),

          Text(
            "🎯 Objetivo do Jogo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "O objetivo é alcançar 12 pontos antes do adversário, vencendo rodadas compostas por até 3 mãos.",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),

          Text(
            "👥 Jogadores",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Pode ser jogado por 2, 4 ou 6 jogadores. O mais comum é em duplas (2 contra 2).",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),

          Text(
            "🃏 Baralho",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "São utilizadas 40 cartas do baralho comum, excluindo-se as cartas 8, 9, 10 e curingas.",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),

          Text(
            "🔝 Ordem das Cartas",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Do mais forte para o mais fraco:\n3 > 2 > A > K > J > Q > 7 > 6 > 5 > 4",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            "As Manilhas são as cartas imediatamente superiores à carta vira e seguem esta ordem entre si:\nZap (Paus) > Copas > Espadas > Ouros",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),

          Text(
            "🃎 Distribuição das Cartas",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Cada jogador recebe 3 cartas. Após a distribuição, uma carta é virada para determinar a manilha da rodada.",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),

          Text(
            "🥇 Como Vencer uma Rodada",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Cada rodada possui até 3 disputas (mãos). Vence a rodada quem ganhar duas delas. Em caso de empate, vence quem jogou por último ou quem venceu a mão anterior.",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),

          Text(
            "🔼 Truco, Seis, Nove e Doze",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Durante a rodada, é possível aumentar a aposta:\n- Truco: 3 pontos\n- Seis: 6 pontos\n- Nove: 9 pontos\n- Doze: 12 pontos\n\nO adversário pode aceitar, correr (fugir) ou aumentar ainda mais.",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),

          Text(
            "✋ Mão de Ferro",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Se ambos os times estiverem com 11 pontos, ocorre a Mão de Ferro. Todos jogam com as cartas viradas e não é permitido pedir Truco. Quem vencer essa rodada vence o jogo.",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),

          Text(
            "🔄 Regras Complementares",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "- Se a última mão empatar e não houver vencedor anterior, quem começou perde.\n"
            "- É permitido blefar ao pedir Truco com cartas fracas.\n"
            "- Parceiros podem usar sinais (como caretas), mas não podem falar suas cartas.",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),

          Text(
            "🧠 Dicas Estratégicas",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "- O Zap (manilha de paus) é a carta mais forte do jogo.\n"
            "- Guardar manilhas para a última mão pode garantir a vitória.\n"
            "- Blefar faz parte do jogo. Use com sabedoria.",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 40),
        ],
      ),
    ),
  );
}
