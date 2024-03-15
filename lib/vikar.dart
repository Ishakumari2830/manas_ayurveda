import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vikar extends StatefulWidget {
  @override
  State<Vikar> createState() => _VikarState();
}

class _VikarState extends State<Vikar> {
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
                  Colors.blue.shade600,
                  Colors.blue.shade200,
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
                                    Colors.blue.shade400,
                                    Colors.blue.shade400.withOpacity(0),
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
                                                  Colors.blue.shade700,
                                                  Colors.blueGrey.shade500,
                                                ],
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/vikar.png'),
                                              )),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 12),
                                        child: Image.asset(
                                          'assets/images/pngwing4.png',
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
                                  "                VIKAR",
                                  style: TextStyle(
                                    color: Colors.blue,
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
                          " विकारेषु दोषाः प्रध्वंस्यन्ति, समयेषु गुणाः प्रकाशन्ते। \n तस्मिन् क्षणे विकारोऽपि न भवति, तस्माद्विकारं समं विदुः॥ \n \n"
                          "According to Ayurveda, vikaar is regarded as a disturbance in the"
                          " natural order of life, disrupting the delicate balance of the "
                          "doshas - Vata, Pitta, and Kapha. Just as a gentle breeze can sway"
                          " the branches of a tree, so too can the slightest imbalance in"
                          " these vital energies unsettle the equilibrium of the body,"
                          " mind, and soul."
                          "Vikaar may manifest as a whisper of discomfort in the body,"
                          " a subtle shift in mood, or a clouding of the intellect. Through"
                          " the wisdom of Ayurveda, the ancient healers recognized the"
                          " interconnectedness of all things - the dance of the elements"
                          " within and without. ",
                          maxLines: 30,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue.shade700,
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
