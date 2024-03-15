import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manas/quest2.dart';

import 'first.dart';

class Questionaire_first extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Questionaire_firstState();
}

class _Questionaire_firstState extends State<Questionaire_first> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  Colors.green.shade300,
                  Colors.green.shade900,
                ],
              ),
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    children: [
                      _buildFirstStepVerificationQuestion(context),
                      SizedBox(height: 40),
                      Container(
                        width: 250,
                        margin: EdgeInsets.only(
                          left: 47,
                          right: 48,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "LET'S KNOW YOUR PRAKRITI\n\n",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Click on the button given below and answer all the questions accurately",
                                style: TextStyle(
                                    color: Color(0XFF000000),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            minimumSize:
                                MaterialStateProperty.all(Size(300, 60))),

                        // text:"Questionnaire 1",
                        // margin:EdgeInsets.only(
                        // left:47,
                        // rigth:48,
                        // ),
                        // buttonStyle:CustomButtonStyles.outlinePrimaryTL25,
                        // buttonStyle:CustomButtonStyles.titleLargeGreen80001,

                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => firstques()));
                        },
                        child: Text(
                          'Questionnaire 1',
                          style: TextStyle(
                            color: Colors.green,
                            //backgroundColor: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      // CustomImageView(
                      // imagePath:ImageConstant.imgTransparentMar,
                      // height:214,
                      // width:202,
                      // ),
                      Image.asset(
                        'assets/images/transparentmar.png',
                        height: 350,
                        width: 300,
                      ),
                      SizedBox(height: 20),
                      // Container(
                      //   margin: EdgeInsets.only(right: 1),
                      //   padding: EdgeInsets.symmetric(
                      //     horizontal: 85,
                      //     vertical: 15,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.only(
                      //         topLeft: Radius.circular(42),
                      //         topRight: Radius.circular(42)),
                      //     color: Colors.white,
                      //   ),
                      //   child: ElevatedButton(
                      //     style: ButtonStyle(
                      //         backgroundColor: MaterialStateProperty.all<Color>(
                      //             Colors.green.shade800),
                      //         minimumSize:
                      //             MaterialStateProperty.all(Size(400, 80))),
                      //     //height:56,
                      //     //text:"SUBMIT",
                      //     //buttonStyle:CustomButtonStyles.outlinePrimaryTL28,
                      //     onPressed: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => firstques()));
                      //     },
                      //     child: Text(
                      //       'Question 1',
                      //       style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 24,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFirstStepVerificationQuestion(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1),
      padding: EdgeInsets.symmetric(
        horizontal: 34,
        vertical: 19,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          //  topLeft: Radius.zero
          bottomLeft: Radius.circular(42),
          bottomRight: Radius.circular(42),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          SizedBox(
            width: 280,
            child: Text(
              "FIRST STEP VERIFICATION\n(QUESTIONNARIRE)",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green.shade700,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
