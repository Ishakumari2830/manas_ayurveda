import 'package:flutter/material.dart';

import 'menupage.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade800,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
            leadingWidth: 60,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                size: 40,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
              },
            ),
            centerTitle: true,
            title: SizedBox(
              width: 133,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.green.shade400,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.elliptical(180, 120),
                        topLeft: Radius.elliptical(180, 120),
                        bottomLeft: Radius.elliptical(180, 120),
                        bottomRight: Radius.elliptical(180, 120),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 9,
                      top: 12,
                      right: 23,
                    ),
                    child: Text(
                      'MANAS',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                height: 36,
                width: 40,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 11,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 36,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                          size: 40,
                        ),
                        onPressed: () {
                          // Handle account icon press
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      //margin: EdgeInsets.only(top: 20), // Adjust this margin as needed
      width: screenWidth * 1,
      height: screenHeight * 1,
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          //topRight: Radius.circular(50),
          //topLeft: Radius.circular(50),
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1.41),
          colors: [Colors.green.shade300, Colors.green.shade700],
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          _buildGoodEveningSection(context),
          SizedBox(
            height: 29,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                    topRight: Radius.circular(200),
                    bottomRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                  )),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Your content here
                  Container(
                    height: 73,
                    width: 78,
                    margin: EdgeInsets.only(top: 10),
                    // decoration: BoxDecoration(
                    //   color: Colors.green.shade500,
                    //   border: Border.all(
                    //     strokeAlign: BorderSide.strokeAlignOutside,
                    //     width: 1,
                    //     color: Colors.greenAccent,
                    //   ),
                    //   borderRadius: BorderRadius.circular(80),
                    // ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 88,
                            width: 90,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 7,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 7,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment(0.5, 0),
                                end: Alignment(0.5, 1.41),
                                colors: [
                                  Colors.green.shade400,
                                  Colors.blueGrey.shade300
                                ]),
                            borderRadius: BorderRadius.circular(38),
                          ),
                          child: Image.asset(
                            'assets/images/pngwing.png',
                            height: 75,
                            width: 75,
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          margin: EdgeInsets.only(bottom: 67),
                          padding: EdgeInsets.symmetric(
                            horizontal: 7,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment(0.5, 0),
                                end: Alignment(0.5, 1.41),
                                colors: [
                                  Colors.deepOrange.shade700,
                                  Colors.deepOrange.shade200
                                ]),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Image.asset(
                            'assets/images/pngwing18.png',
                            height: 59,
                            width: 58,
                            alignment: Alignment.topCenter,
                            //fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 139,
                          width: 213,
                          margin: EdgeInsets.only(left: 1),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 72,
                                  width: 73,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 70,
                                          width: 73,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(36),
                                            gradient: LinearGradient(
                                              begin: Alignment(0.5, 0),
                                              end: Alignment(0.5, 1.41),
                                              colors: [
                                                Colors.lightBlue.shade400,
                                                Colors.cyan.shade100,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/pngwing3.png',
                                        height: 70,
                                        width: 73,
                                        alignment: Alignment.topCenter,
                                        fit: BoxFit.cover,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/pngwing6.png',
                                height: 120,
                                width: 132,
                                alignment: Alignment.centerLeft,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 36,
                      right: 31,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          // padding: EdgeInsets.symmetric(
                          //   horizontal: 14,
                          //   vertical: 8,
                          // ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/vikar.png',
                                ),
                                fit: BoxFit.cover,
                              )),

                          // AppDecoration.outlinePrimary.copywith(
                          //   image:DecorationImage(
                          //     image:AssetImage(
                          //       ImageConstant.imgVikar,
                          //     ),
                          //     fit:BoxFit.cover,
                          //   ),
                          // ),

                          child: Image.asset(
                            'assets/images/pngwing4.png',
                            height: 55,
                            width: 50,
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 44,
                        ),
                        Container(
                          height: 77,
                          width: 83,
                          // decoration: BoxDecoration(
                          //   color: Colors.white,
                          //   border: Border.all(
                          //       color: Colors.grey.shade300,
                          //       width: 1,
                          //       strokeAlign:
                          //           BorderSide.strokeAlignOutside),
                          //   boxShadow: [
                          //     BoxShadow(
                          //         color: Colors.grey.shade300,
                          //         spreadRadius: 2,
                          //         blurRadius: 2,
                          //         offset: Offset(
                          //           0,
                          //           4,
                          //         ))
                          //   ],
                          // ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 72,
                                  width: 72,

                                  // margin: EdgeInsets.only(bottom: 67),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 7,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/pngwing5.png',
                                      ),
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                    gradient: LinearGradient(
                                      begin: Alignment(0.5, 1),
                                      end: Alignment(0.5, 1.41),
                                      colors: [
                                        Colors.lime.shade300,
                                        Colors.amber.shade100,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // CustomImageView(
                              //   imagePath:ImageConstant.imgPngwing5,
                              //   height:57.adaptSize,
                              //   width:57.adaptSize,
                              //   alignment:Alignment.topCenter,
                              //   margin:EdgeInsets.only(top:8),
                              // ),

                              // Image.asset(
                              //   'assets/images/pngwing5.png',
                              //   height: 70,
                              //   width: 65,
                              //   alignment: Alignment.topCenter,
                              //   fit: BoxFit.cover,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoodEveningSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(120),
              bottomLeft: Radius.circular(120),
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/img20.png',
              ),
            ),
          ),
          child: SizedBox(
            width: 340,
            height: 150,
            child: Text(
              "\nNamaskaram \n MANAS",
              maxLines: 4,
              style: TextStyle(
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 2,
                  wordSpacing: 4),
            ),
          ),
        ),
        Image.asset(
          'assets/images/backg.png',
          height: 450,
          width: 360,
          alignment: Alignment.topCenter,
        ),
      ]),
    );
  }
}
