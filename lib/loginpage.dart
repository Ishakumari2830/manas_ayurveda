import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

import 'SignUpPage.dart';
import 'firstPage.dart';

// void main() {
//   runApp(LoginPage());
// }

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Color textColor = Colors.white;

  bool _rememberMe = false;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          body: Container(
              width: screenWidth * 1.0,
              height: screenHeight * 1.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      Colors.green.shade900,
                      Colors.green.shade300,
                    ]),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Form(
                  key: _formkey,
                  child: Container(
                    height: screenHeight * 1.0,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            height: 770,
                            width: 560,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 180,
                                    width: 180,
                                    margin: EdgeInsets.only(top: 70, right: 86),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(87),
                                        gradient: LinearGradient(
                                            begin: Alignment(0.5, 0),
                                            end: Alignment(0.5, 1),
                                            colors: [
                                              Colors.green.shade400,
                                            ])),
                                  ),
                                ),
                                // Image.asset(
                                //   'assets/images/img_whatsapp_image_2023.png',
                                //   height: 256,
                                //   width: 322,
                                //   alignment: Alignment.topCenter,
                                // ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                            Colors.green.shade200.withOpacity(
                                                0.5), // Specify the color and opacity
                                            BlendMode
                                                .dstATop, // Specify the blend mode
                                          ),
                                          child: Image.asset(
                                            'assets/images/newww.png',
                                            alignment: Alignment.topLeft,
                                            height: screenHeight * 1.0,
                                            width: screenWidth * 1.0,
                                          ),
                                        ),
                                        //_buildLoginForm(context),
                                      ],
                                    ),
                                  ),
                                ),

                                // Image.asset(
                                //   'assets/images/rounddd.jpeg',
                                //   height: 256,
                                //   width: 322,
                                //   alignment: Alignment.topCenter,
                                // ),

                                // Image.asset(
                                //   'assets/images/img_whatsapp_image_2023.png',
                                //   height: 300,
                                //   width: 370,
                                //   alignment: Alignment.topCenter,
                                // ),
                                _buildLoginForm(context),
                                //_buildAppHeader(context),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 350,
                            margin: EdgeInsets.only(top: 25.0),
                            child: Text(
                              "           स्वस्थस्य स्वास्थ्य रक्षणं | \n         आतुरस्य विकार प्रशमनं च ||",
                              style: TextStyle(
                                  color: Colors.greenAccent.shade100,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  fontFamily: 'Oleo Script'),
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Image.asset(
                          'assets/images/img_whatsapp_image_2023.png',
                          height: 450,
                          width: 370,
                          //alignment: Alignment.topCenter,
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Align(
                          //alignment: Alignment.topCenter,
                          child: Container(
                            width: 350,
                            margin: EdgeInsets.only(top: 25.0),
                            child: Text(
                              " Manas:The Ayurvedic Lifestyle",
                              style: TextStyle(
                                  color: Colors.greenAccent.shade100,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  fontFamily: 'Oleo Script'),
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.only(left: 21),
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 28.0,
        ),
        decoration: BoxDecoration(
          color: Colors.green.shade50,
          borderRadius: BorderRadius.circular(31),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
                padding: EdgeInsets.only(right: 1.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      prefixIcon: Icon(Icons.email),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                        top: 13,
                        right: 30,
                        bottom: 13,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                )),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.only(right: 1),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade200,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(top: 13, right: 30, bottom: 13)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1),
                    child: Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = value!;
                            });
                          },
                        ),
                        Text('Remember me'),
                      ],
                    ),
                  ),
                  // Text('Remeber Me\n'),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.green.shade700,
                        fontSize: 9,
                        fontFamily: 'Lexend Deca',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstPage()),
                  );
                }
              },
              // Add your onPressed logic here

              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                //selectionColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 10,
                      )),
                  TextSpan(
                    text: "Create Account",
                    style: TextStyle(
                      color: Color(0XFF248954),
                      fontSize: 15,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setState(() {
                          textColor = Colors.green;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

// class SignUpPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up Page'),
//       ),
//       body: Center(
//         child: Text('Sign Up Page Content'),
//       ),
//     );
//   }
// }
