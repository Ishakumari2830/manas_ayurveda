import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dosh extends StatefulWidget {
  @override
  State<Dosh> createState() => _DoshState();
}

class _DoshState extends State<Dosh> {
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
                  Colors.deepOrange.shade300,
                  Colors.deepOrange.shade100,
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
                                    Colors.deepOrange.shade200,
                                    Colors.deepOrange.shade200.withOpacity(0),
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
                                                Colors.deepOrange.shade700,
                                                Colors.deepOrange.shade300,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 12),
                                        child: Image.asset(
                                          'assets/images/pngwing18.png',
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
                                  "                DOSH",
                                  style: TextStyle(
                                    color: Colors.deepOrange.shade600,
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
                          "वातः पित्तं कफश्चेति त्रयो दोषाः प्रकीर्तिताः\nतैरेवेह गुणा: सर्वा: संख्याता: प्रकृतिभिः क्रिया:॥\n\n"
                          " In Indian Ayurveda,there are mainly three types of body types—Vata,"
                          " Pitta & Kapha.The doshas are described as biological energies found"
                          " throughout the humanbody and mind. They govern the physical & mental "
                          "processes and provide every living being with an individual blueprint for "
                          "health and fulfillment. These doshas are derived from the five elements of "
                          "nature and its related properties, wherein Vata is composed of space & air,"
                          " Kapha of fire & water and Pitta of earth & water."
                          "Though it’s believed that each person has a unique constitution, they generally fall"
                          " under one of three main dosha types — "
                          "vata, kapha, and pitta — based on their body type, personality, and sensitivities.",
                          maxLines: 30,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.deepOrange.shade700,
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
