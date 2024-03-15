import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manas/mansikbhav.dart';
import 'package:manas/quest1.dart';
import 'package:manas/ritucharya.dart';
import 'package:manas/vikar.dart';

import 'circadianRhythm.dart';
import 'dosh.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: screenHeight * 1.0,
          // height: screenWidth * 1.0,
          height: 800,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                Colors.green.shade400,
                Colors.green.shade900,
              ],
            ),
            // image: DecorationImage(
            //   image: AssetImage(
            //     'imgAndroidSmall',
            //   ),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Container(
            width: double.maxFinite,
            // height: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 17,
            ),
            child: ClipRect(
              // clipBehaviour: Clip.antiAlias,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Container(
                  height: 605,
                  width: 328,
                  padding: EdgeInsets.symmetric(
                    horizontal: 13,
                    vertical: 36,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.green.shade200,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 54,
                          width: 229,
                          margin: EdgeInsets.only(top: 55),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1, 0.5),
                              end: Alignment(0, 0.5),
                              colors: [
                                Colors.green.shade500,
                                Colors.green.shade500.withOpacity(0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 54,
                          width: 229,
                          margin: EdgeInsets.only(top: 150),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1, 0.5),
                              end: Alignment(0.07, 0.5),
                              colors: [
                                Colors.lightBlueAccent.shade200,
                                Colors.lightBlueAccent.shade200.withOpacity(0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 54,
                          width: 229,
                          margin: EdgeInsets.only(top: 260),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1, 0.5),
                              end: Alignment(0.08, 0.5),
                              colors: [
                                Colors.lime.shade200,
                                Colors.lime.shade200.withOpacity(0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 54,
                          width: 229,
                          margin: EdgeInsets.only(bottom: 260),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1, 0.5),
                              end: Alignment(0.08, 0.5),
                              colors: [
                                Colors.blue.shade700,
                                Colors.teal.shade200.withOpacity(0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 54,
                          width: 229,
                          margin: EdgeInsets.only(bottom: 145),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1, 0.5),
                              end: Alignment(0.1, 0.5),
                              colors: [
                                Colors.deepOrange.shade400,
                                Colors.deepOrange.shade400.withOpacity(0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(right: 210),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                          color: Colors.blueGrey,
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
                                                BorderRadius.circular(40),
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
                                        margin: EdgeInsets.only(
                                          left: 18,
                                        ),
                                        child: Image.asset(
                                          'assets/images/pngwing.png',
                                          height: 49,
                                          width: 40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 32),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    right: 14,
                                  ),
                                  height: 65,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: Colors.blueAccent.shade100,
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
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 78,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            gradient: LinearGradient(
                                              begin: Alignment(0.5, 0),
                                              end: Alignment(0.5, 1.41),
                                              colors: [
                                                Colors.lightBlue.shade200,
                                                Colors.cyan.shade500,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 12),
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          'assets/images/pngwing3.png',
                                          height: 68,
                                          width: 80,
                                          //alignment: Alignment.topCenter,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 36),
                              Container(
                                margin: EdgeInsets.only(right: 32),
                                height: 68,
                                width: 63,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors.yellowAccent.shade100,
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
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 78,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          gradient: LinearGradient(
                                            begin: Alignment(0.5, 0),
                                            end: Alignment(0.5, 1.41),
                                            colors: [
                                              Colors.lime.shade200,
                                              Colors.amber.shade100,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 8),
                                      child: Image.asset(
                                        'assets/images/pngwing5.png',
                                        height: 57,
                                        width: 57,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 36),
                              Container(
                                margin: EdgeInsets.only(right: 26),
                                height: 74,
                                width: 68,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.blueGrey,
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
                                  ],
                                  borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/vikar.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/images/pngwing4.png',
                                    height: 61,
                                    width: 54,
                                  ),
                                ),
                              ),
                              SizedBox(height: 43),
                              Container(
                                //margin: EdgeInsets.only(left: 18),
                                height: 72,
                                width: 72,
                                margin: EdgeInsets.only(right: 20, bottom: 80),
                                // padding: EdgeInsets.symmetric(
                                //   horizontal: 7,
                                //   vertical: 5,
                                // ),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1.41),
                                        colors: [
                                          Colors.deepOrange.shade200,
                                          Colors.deepOrange.shade500,
                                        ]),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Container(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                      'assets/images/imgpngwing2.png',
                                      height: 59,
                                      width: 58,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 87,
                            right: 45,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13, top: 47),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RituCharya()),
                                    );
                                  },
                                  child: Text(
                                    "RITUCHARYA",
                                    style: TextStyle(
                                      color: Colors.green.shade700,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 65),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MansikBhav()),
                                    );
                                  },
                                  child: Text(
                                    "  MANSIK \n SWASTHAYA",
                                    style: TextStyle(
                                      color: Colors.blue.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 55),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 13,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Circadian()),
                                    );
                                  },
                                  child: Text("CIRCADIAN \n RHYTHAM",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.yellowAccent,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                              SizedBox(height: 65),
                              Padding(
                                padding: EdgeInsets.only(left: 12, bottom: 8),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Vikar()),
                                    );
                                  },
                                  child: Text(
                                    "VIKAR",
                                    style: TextStyle(
                                        color: Colors.lightBlue.shade400,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(height: 68),
                              Padding(
                                padding: EdgeInsets.only(left: 5, bottom: 142),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dosh()),
                                    );
                                  },
                                  child: Text(" DOSH",
                                      style: TextStyle(
                                        color: Colors.deepOrange.shade400,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 60,
                        width: 350,
                        margin: EdgeInsets.only(top: 620),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Questionaire_first()),
                                );
                              }
                            },
                            child: Text(
                              'Check Your Health Status',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 24),
                            )),
                      ),
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
}
