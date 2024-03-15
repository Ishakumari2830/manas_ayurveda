import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'LoginPage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);

    // Wait for 4 seconds and then navigate to the login page
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green.shade500, Colors.green.shade800],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ScaleTransition(
                scale: _animation,
                // child: Container(
                //   height: 180,
                //   width: 180,
                //   margin: EdgeInsets.all(67),
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 7,
                //     vertical: 7,
                //   ),
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //         begin: Alignment(0.5, 0),
                //         end: Alignment(0.5, 1.41),
                //         colors: [Colors.green.shade900, Colors.green.shade900]),
                //     borderRadius: BorderRadius.circular(170),
                //   ),
                //   child: Image.asset(
                //     'assets/images/logo3.jpg',
                //     height: 150,
                //     width: 150,
                //     fit: BoxFit.cover,
                //     //color: Colors.green.shade900,
                //   ),
                // ),
                child: Container(
                  height: 180,
                  width: 180,

                  // margin: EdgeInsets.only(bottom: 67),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/logo1.jpg',
                      ),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 1),
                      end: Alignment(0.5, 1.41),
                      colors: [
                        Colors.green.shade300,
                        Colors.green.shade900,
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.green.shade300, Colors.green.shade900],
                  ).createShader(bounds);
                },
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'MANAS : THE AYURVEDIC LIFESTYLE',
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        //color: Colors.white
                      ),
                      speed: Duration(milliseconds: 100),
                      textAlign: TextAlign.center,
                    ),
                  ],
                  totalRepeatCount: 1,
                ),
              ),
              // SizedBox(height: 20),
              // SpinKitThreeBounce(
              //   color: Colors.white,
              //   size: 30,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
