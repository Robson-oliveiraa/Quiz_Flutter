import 'package:flutter/material.dart';
import 'package:app_flutter/components/PageCredito.dart';
import 'package:app_flutter/components/PageJogo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: DesignDoQuizHome(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DesignDoQuizHome extends StatelessWidget {
  const DesignDoQuizHome({super.key});

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
                  left: 115,
                  top: 374,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyPageJogo()));
                      },
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 200,
                                height: 50,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF333333),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 60,
                              top: 12,
                              child: Text(
                                'JOGAR',
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
                Positioned(
                  left: 118,
                  top: 496,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyPageCredito()));
                      },
                      child: SizedBox(
                        width: 200,
                        height: 50,
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
                                'CRÉDITOS',
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
                const Positioned(
                  left: 188,
                  top: 168,
                  child: Text(
                    'Quiz',
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
                  left: 127,
                  top: 206,
                  child: Text(
                    'Hollow\n         Knight',
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
        ],
      ),
    );
  }
}
