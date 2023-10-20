// ignore: file_names
import 'package:flutter/material.dart';
import 'package:app_flutter/main.dart';

void main() {
  runApp(const MyPageCredito());
}

class MyPageCredito extends StatelessWidget {
  const MyPageCredito({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: DesignDoQuizCrDito(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DesignDoQuizCrDito extends StatelessWidget {
  const DesignDoQuizCrDito({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 430,
            height: 815,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.21, -0.98),
                end: Alignment(-0.21, 0.98),
                colors: [
                  Color(0xFF6ADAD7),
                  Color(0xFF3C7B61),
                  Color(0xFF224A3A)
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 13,
                  top: 738,
                  child: Container(
                    width: 220,
                    height: 56.32,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 43.12,
                          top: 30.72,
                          child: SizedBox(
                            width: 89.55,
                            height: 14.08,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Rondônia\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 1.60,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'CAMPUS',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 4,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.80,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' PORTO VELHO, CALAMA',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 4,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.80,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 43.21,
                          top: 14.08,
                          child: SizedBox(
                            width: 168.98,
                            height: 13.73,
                            child: Text(
                              'INSTITUTO FEDERAL',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 2.40,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15.17,
                          top: 12.80,
                          child: SizedBox(
                            width: 23.91,
                            height: 32.89,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 16.87,
                                  top: 0,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF139610),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16.87,
                                  top: 17.23,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF139610),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8.43,
                                  top: 8.62,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF139610),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8.43,
                                  top: 25.85,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF139610),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: const ShapeDecoration(
                                      color: Color(0xFFBE0404),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -0,
                                  top: 8.62,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF139610),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -0,
                                  top: 17.23,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF139610),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -0,
                                  top: 25.85,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF139610),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8.43,
                                  top: 0,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF139610),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8.43,
                                  top: 17.23,
                                  child: Container(
                                    width: 7.04,
                                    height: 7.04,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF139610),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.50),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 25,
                  child: Container(
                    width: 159,
                    height: 156,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/hollow.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 298,
                  top: 651,
                  child: Container(
                    width: 107,
                    height: 143,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/grub.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 177,
                  top: 25,
                  child: Text(
                    'Créditos',
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
                const Positioned(
                  left: 44,
                  top: 199,
                  child: Text(
                    'Design e programação\ndo jogo feita por:',
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
                Positioned(
                  left: 23,
                  top: 486,
                  child: SizedBox(
                    width: 383,
                    height: 104,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 8,
                          top: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Jefferson B. de S. Marcundes\nemail:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Inder',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 4,
                                  ),
                                ),
                                TextSpan(
                                  text: 'jeffersonbruno0210@gmail.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Inder',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 2.80,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 59,
                          child: SizedBox(
                            width: 170,
                            height: 45,
                            child: Stack(
                              children: [
                                const Positioned(
                                  left: 49,
                                  top: 14,
                                  child: Text(
                                    '@jeff_brntz',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Inder',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 2.80,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/insta.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 23,
                  top: 310,
                  child: SizedBox(
                    width: 360,
                    height: 97,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 8,
                          top: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Robson André Reis Oliveira\nemail:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Inder',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 4,
                                  ),
                                ),
                                TextSpan(
                                  text: 'robsonpvh07@gmail.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Inder',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 2.80,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 52,
                          child: SizedBox(
                            width: 190,
                            height: 45,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/insta.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 50,
                                  top: 14,
                                  child: Text(
                                    '@robso_andre',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Inder',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 2.80,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 13,
                    top: 13,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp()));
                      },
                      child: SizedBox(
                        width: 74.48,
                        height: 34,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 74.48,
                                height: 34,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 15,
                              top: 6,
                              child: SizedBox(
                                width: 45,
                                height: 16,
                                child: Text(
                                  'voltar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inder',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
