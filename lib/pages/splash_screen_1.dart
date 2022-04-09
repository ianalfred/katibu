import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17c690),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 560,
                    padding: const EdgeInsets.only(
                      bottom: 294,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 32.50),
                        Text(
                          'Welcome to\nKilimo Bora',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xfff8f8f8),
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 32.50),
                        SvgPicture.asset(
                          'assets/svg/Carrot.svg',
                          semanticsLabel: 'carrot',
                          height: 71,
                          width: 71,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -50,
                    top: 170,
                    child: SvgPicture.asset(
                      'assets/svg/Carrot.svg',
                      semanticsLabel: 'carrot',
                      height: 380,
                      width: 380,
                    ),
                  ),
                  Positioned(
                    left: -17,
                    top: 306,
                    child: SvgPicture.asset(
                      'assets/svg/Carrot.svg',
                      semanticsLabel: 'carrot',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 54,
                  bottom: 44,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 343,
                      child: Text(
                        'We have more than 10.000+ farm products available for all of you',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff8a8a8e),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.50),
                    Container(
                      width: 375,
                      height: 44,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 44,
                            color: Colors.white,
                            padding: const EdgeInsets.only(
                              left: 148,
                              right: 147,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 80,
                                  height: 8,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffff7e4e),
                                        ),
                                      ),
                                      SizedBox(width: 16),
                                      Container(
                                        width: 56,
                                        height: 8,
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 8,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                Color(0xffe4e4e6),
                                              ),
                                            ),
                                            SizedBox(width: 16),
                                            Container(
                                              width: 8,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                Color(0xffe4e4e6),
                                              ),
                                            ),
                                            SizedBox(width: 16),
                                            Container(
                                              width: 8,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                Color(0xffe4e4e6),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.50),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/splash_screen_2');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff17c690),
                        fixedSize: const Size(300, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
