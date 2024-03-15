import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MansikBhav extends StatefulWidget {
  @override
  State<MansikBhav> createState() => _MansikBhavState();
}

class _MansikBhavState extends State<MansikBhav> {
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
            width: screenWidth * 1.0,
            height: screenHeight * 1.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  Colors.lightBlue.shade400,
                  Colors.lightBlue.shade100,
                ],
              ),
            ),
            child: Container(
              width: double.maxFinite,
              // height: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 22),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(52),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 75,
                      width: 277,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 62,
                              width: 247,
                              margin: EdgeInsets.only(bottom: 1),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(1, 0.5),
                                  end: Alignment(0, 0.5),
                                  colors: [
                                    Colors.lightBlue.shade200,
                                    Colors.lightBlue.shade200.withOpacity(0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Container(
                                  height: 75,
                                  width: 78,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey,
                                          width: 1,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 2,
                                            blurRadius: 2,
                                            offset: Offset(
                                              0,
                                              4,
                                            ))
                                      ]),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 75,
                                          width: 78,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(39),
                                            gradient: LinearGradient(
                                              begin: Alignment(0.5, 0),
                                              end: Alignment(0.5, 1.41),
                                              colors: [
                                                Colors.lightBlue.shade700,
                                                Colors.lightBlueAccent..shade400
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 12),
                                        child: Image.asset(
                                          'assets/images/pngwing3.png',
                                          height: 59,
                                          width: 50,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9),
                            child: Column(
                              children: [
                                // SizedBox(
                                //   width: 179,
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       // Container(
                                //       //   margin: EdgeInsets.only(bottom: 3),
                                //       //   child: Image.asset(
                                //       //     'assets/images/imgmansikbhav',
                                //       //     height: 34,
                                //       //     width: 35,
                                //       //   ),
                                //       // ),
                                //       // CustonIconButton(
                                //       // height: 37,
                                //       // width: 42,
                                //       // padding: EdgeInsets.all(4.0),
                                //       // child: CustomImageview(
                                //       // imagePath:ImageConstant.imgPngwing5,
                                //       // ),
                                //       // ),
                                //
                                //       // CustomImageView(
                                //       // imagePath: Imageconstant.imgMansikBhaw,
                                //       // height: 33,
                                //       // width: 38,
                                //       // margin:EdgeInsets.only(bottom: 2),
                                //       // ),
                                //       // CustomImageView(
                                //       // imagePath:Imageconstant.imgMansikBhaw,
                                //       // height: 36.adaptsize,
                                //       // width: 36.adaptSize,
                                //       // ),
                                //     ],
                                //   ),
                                // ),
                                SizedBox(
                                  height: 20,
                                  width: 40,
                                ),
                                Text(
                                  "                Mansik Swasthaya",
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Magra',
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: 293,
                      child: Text(
                          " स्थिरबुद्धिरसम्मूढ़ा, प्रसादमन्तरात्मनः। \n न तत्र स्थितं योगी, संस्थोऽकाङ्क्षी धनाध्यक्षः॥ \n \n"
                          "In the realm of Ayurveda, Mansik Swasthya, or mental health, is"
                          " regarded as an integral component of overall well-being, intricately"
                          " intertwined with physical, emotional, and spiritual harmony. Just as"
                          " the doshas influence bodily functions, they also play a vital role "
                          "in shaping the mind and emotions.\n Ayurveda recognizes that imbalances"
                          " in the doshas can manifest as disturbances in mental equilibrium,"
                          " leading to feelings of anxiety, depression, or agitation. To nurture"
                          " Mansik Swasthya, Ayurvedic wisdom emphasizes the importance of "
                          "cultivating Sattva - a state of clarity, balance, and serenity."
                          " Through practices such as meditation, yoga, and pranayama, individuals"
                          " can harmonize the doshas, calming the mind and soothing the soul.",
                          maxLines: 30,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.lightBlue.shade700,
                            fontSize: 17,
                            fontFamily: 'Lexend Deca',
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
