import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({ Key? key }) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 560,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                  Navigator.pushNamed(
                                    context, '/user_type');
                              }, 
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                  color: Color(0xff1f2933),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.08,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.0),
                        SvgPicture.asset(
                          'assets/svg/on_board_1.svg',
                          semanticsLabel: 'On Board',
                          height: 380,
                          width: 380,
                        ),
                        SizedBox(height: 50.0),
                        Container(
                          width: 72,
                          height: 8,
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                  Container(
                                      width: 24,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24),
                                          color: Color(0xffff7e4e),
                                      ),
                                  ),
                                  SizedBox(width: 16),
                                  Container(
                                      width: 32,
                                      height: 8,
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                              Container(
                                                  width: 8,
                                                  height: 8,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffc7c7cc),
                                                  ),
                                              ),
                                              SizedBox(width: 16),
                                              Container(
                                                  width: 8,
                                                  height: 8,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffc7c7cc),
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
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 20, ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 343,
                      child: Text(
                        'Easy Shopping',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                                  color: Color(0xff1f2933),
                                  fontSize: 24,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    SizedBox(height: 13.50),
                    SizedBox(
                      width: 343,
                      child: Text(
                        'Grab your items only need to order from home, click pay and wait for the courier to arrive',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                                  color: Color(0xff8a8a8e),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                         Navigator.pushNamed(
                                      context, '/splash_screen_3');
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff17c690),
                        fixedSize: const Size(300, 40),
                        shadowColor: Color(0xff17c690),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        'Next',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}