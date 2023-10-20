import 'package:flutter/material.dart';
import 'package:app_flutter/main.dart';

void main() {
  runApp(const MyPageJogo());
}


class MyPageJogo extends StatelessWidget {
  const MyPageJogo({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HollowScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HollowScreen extends StatefulWidget {
  const HollowScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HollowScreenState createState() => _HollowScreenState();
}

class _HollowScreenState extends State<HollowScreen> {
  List<Map<String, dynamic>> questions = [
    {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/grub.png',
      'options': ['GRUB', 'HOLLOW', 'HORNET', 'ZOTE'],
      'correctOption': 'GRUB',
    },
    {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/besouro.png',
      'options': ['HORNET', 'QUIRREL', 'ULTIMO BESOURO', 'SLY'],
      'correctOption': 'ULTIMO BESOURO',
    },
    {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/sly.png',
      'options': ['GRUB', 'SLY', 'HORNET', 'QUIRREL'],
      'correctOption': 'SLY',
    },
    {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/quirrel.png',
      'options': ['QUIRREL', 'TUK', 'CLOTH', 'ZOTE'],
      'correctOption': 'QUIRREL',
    },
    {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/forjador.png',
      'options': ['FORJADOR', 'BRETTA', 'TISO', 'QUIRREL'],
      'correctOption': 'FORJADOR',
    },
  ];

  int currentQuestionIndex = 0;
  bool answerSelected = false;
  int pontos = 0;

  void showNextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        answerSelected = false;
      });
    } else {
      Navigator.of(context).push(
        _createRoute(TelaFinal(pontos: pontos)),
      );
    }
  }

  void selectAnswer(String selectedOption) {
    if (!answerSelected) {
      setState(() {
        if (selectedOption == questions[currentQuestionIndex]['correctOption']) {
          pontos++;
        }
        answerSelected = true;
      });
    }
  }

  PageRouteBuilder _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.21, -0.98),
                end: Alignment(-0.21, 0.98),
                colors: [Color(0xFF6ADAD7), Color(0xFF3C7B61), Color(0xFF224A3A)],
              ),
            ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              Text(
                questions[currentQuestionIndex]['question'],
                style: const TextStyle(fontSize: 24, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Image.asset(
                questions[currentQuestionIndex]['imagePath'],
                width: 300,
                height: 200,
              ),
              const SizedBox(height: 20),
              Column(
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          if (!answerSelected) {
                            selectAnswer(
                                questions[currentQuestionIndex]['options'][index]);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: answerSelected
                              ? questions[currentQuestionIndex]['correctOption'] ==
                                      questions[currentQuestionIndex]['options'][index]
                                  ? Colors.green
                                  : Colors.red
                              : null,
                        ),
                        child:
                            Text(questions[currentQuestionIndex]['options'][index]),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: showNextQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC1C1C1)
                ),
                child: const Text('Próxima Pergunta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaFinal extends StatelessWidget {
  final int pontos;

  const TelaFinal({super.key, required this.pontos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView( 
        child: Column(
          children: [
            Container(
              width: 420,
              height: 800,
              padding: const EdgeInsets.only(top: 127, bottom: 295),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF6ADAD7), Color(0xFF3C7B61), Color(0xFF224A3A)],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 360,
                    height: 259,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Ohomilho.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 31),
                  Text(
                    'Parabéns \nVocê fez $pontos ponto(s)',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ),
                );
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
    )
    );
  }
}