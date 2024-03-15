import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RituCharya extends StatefulWidget {
  @override
  State<RituCharya> createState() => _RituCharyaState();
}

class _RituCharyaState extends State<RituCharya> {
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
                  Colors.green.shade400,
                  Colors.green.shade100,
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
                                    Colors.green.shade200,
                                    Colors.green.shade200.withOpacity(0),
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
                                                Colors.green.shade700,
                                                Colors.blueGrey.shade500,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 12),
                                        child: Image.asset(
                                          'assets/images/pngwing.png',
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
                                  "                RTIUCHARYA",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Magra',
                                    fontSize: 26,
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
                          " सर्वं तु सम्प्रवक्ष्यामि यथा विधिर्नियुज्यते।\n समान्यमृतुनामादौ साधारणानां च त्यजेत्॥\n\n"
                          " Ayurveda has depicted various rules and regimens (Charya), "
                          "regarding diet and behaviour to acclimitize seasonal  enforcement easily "
                          "without altering body homeostasis. The prime principle of Ayurvedic system of "
                          "medicine is preventive aspect, can be achieved by the change in diet and practices"
                          " in response to change in climatic conditions. This is a very important aspect of"
                          " preventive medicine as mentioned in Ayurvedic texts. Lifestyle disorders are very "
                          "common in the present era, basically originating from lack of following seasonal "
                          "regimens due to lack of concentration in seasonal characteristics. "
                          "A firm scientific analysis is the base, which holds true even on date. ",
                          maxLines: 30,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.green.shade700,
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
