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
    //NOVO
        {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/iselda.png',
      'options': ['ISELDA', 'HOLLOW', 'QUIRREL', 'SLY'],
      'correctOption': 'ISELDA',
    },
    {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/hornet.png',
      'options': ['HOLLOW', 'QUIRREL', 'ISELDA', 'HORNET'],
      'correctOption': 'HORNET',
    },
    {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/cloth.png',
      'options': ['MYLA', 'SLY', 'CLOTH', 'QUIRREL'],
      'correctOption': 'CLOTH',
    },
    {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/myla.png',
      'options': ['QUIRREL', 'MYLA', 'CLOTH', 'HOLLOW'],
      'correctOption': 'MYLA',
    },
    {
      'question': 'Quem é esse personagem?',
      'imagePath': 'assets/images/rei.png',
      'options': ['REI PÁLIDO', 'BRETTA', 'MYLA', 'QUIRREL'],
      'correctOption': 'REI PÁLIDO',
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
        if (selectedOption ==
            questions[currentQuestionIndex]['correctOption']) {
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
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
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
                            selectAnswer(questions[currentQuestionIndex]
                                ['options'][index]);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: answerSelected
                              ? questions[currentQuestionIndex]
                                          ['correctOption'] ==
                                      questions[currentQuestionIndex]['options']
                                          [index]
                                  ? Colors.green
                                  : Colors.red
                              : null,
                        ),
                        child: Text(
                          questions[currentQuestionIndex]['options'][index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Inder',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: 4,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: showNextQuestion,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF333333)),
                child: const Text(
                  'Próxima Pergunta',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: 4,
                  ),
                ),
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
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 430,
            height: 830,
            padding: const EdgeInsets.only(top: 127, bottom: 295),
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [
                  Color(0xFF6ADAD7),
                  Color(0xFF3C7B61),
                  Color(0xFF224A3A)
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 360,
                  height: 205,
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
                Positioned(
                  left: 118,
                  top: 600,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp()));
                      },
                      child: SizedBox(
                        width: 200,
                        height: 70,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 200,
                                height: 50,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF1A1A1A),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 40,
                              top: 12,
                              child: Text(
                                'VOLTAR',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Inder',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
