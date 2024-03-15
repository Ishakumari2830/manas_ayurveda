import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'firstPage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController userNameEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController confirmPasswordEditTextController =
      TextEditingController();
  bool _termsAndCondition = false;
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
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formkey,
              child: SizedBox(
                height: screenHeight * 1.0,
                width: screenWidth * 1.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top: 102),
                        decoration: BoxDecoration(
                          color: Colors.green.shade400,
                          borderRadius: BorderRadius.circular(
                            37,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        // height: 500,
                        // width: 500,
                        padding: EdgeInsets.symmetric(
                          horizontal: 17,
                          vertical: 31,
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment(0.5, 0),
                                end: Alignment(0.5, 1),
                                colors: [
                                  Colors.white,
                                  Colors.white60,
                                ]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(80),
                                bottomLeft: Radius.circular(80))),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("CREATE YOUR ACCOUNT",
                                style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Roboto',
                                  letterSpacing: 1.5, // Letter spacing
                                  wordSpacing: 2.0, // Word spacing
                                )),
                            SizedBox(height: 25),
                            _buildStackWithTermAndCondition(context),
                            SizedBox(
                              height: 25,
                            ),
                            _buildEmailEditText(context),
                            SizedBox(height: 25),
                            _buildFullNameEditText(context),
                            SizedBox(height: 25),
                            _buildUserNameEditText(context),
                            SizedBox(height: 25),
                            _buildPasswordEditText(context),
                            SizedBox(height: 25),
                            _buildConfirmPasswordEditText(context),
                            SizedBox(height: 25),
                            _buildCreateAccountButton(context),
                            SizedBox(height: 25),
                          ],
                        ),
                      ),
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

  ///Section widget
  Widget _buildStackWithTermAndCondition(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 295,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _termsAndCondition,
                        onChanged: (value) {
                          setState(() {
                            _termsAndCondition = value!;
                          });
                        },
                      ),
                      //Text('Remeber me'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 247,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "I have read and agreed to the ",
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 17,
                          ),
                        ),
                        TextSpan(
                          text: "Terms and Conditions",
                          style: TextStyle(
                            color: Color(0XFF248954),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1),
            child: Row(
              children: [
                Checkbox(
                  value: _termsAndCondition,
                  onChanged: (value) {
                    setState(() {
                      _termsAndCondition = value!;
                    });
                  },
                ),
                //Text('Remeber me'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //section widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: emailEditTextController,
          //hintText: "Email",
          // textInputType: textInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Enter Email',
            prefixIcon: Icon(Icons.email),
            border: InputBorder.none,
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }

  //section widget
  //section widget

  Widget _buildFullNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: fullNameEditTextController,
          decoration: InputDecoration(
              hintText: 'Full Name',
              prefixIcon: Icon(Icons.perm_identity),
              border: InputBorder.none),
        ),
      ),
    );
  }

  //section widget

  Widget _buildUserNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: userNameEditTextController,
          decoration: InputDecoration(
            hintText: 'Username',
            prefixIcon: Icon(Icons.account_circle_rounded),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  //widget section

  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7,
        right: 6,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: passwordEditTextController,
          decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock),
              border: InputBorder.none),
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
        ),
      ),
    );
  }
  //widget section

  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7,
        right: 6,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: confirmPasswordEditTextController,
          decoration: InputDecoration(
            hintText: "Confirm Password",
            prefixIcon: Icon(Icons.lock_open_rounded),
            border: InputBorder.none,
          ),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
        ),
      ),
    );
  }

  //widget section
  Widget _buildCreateAccountButton(BuildContext context) {
    return ElevatedButton(
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
        child: Text(
          ' Create Account',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ));
  }
}
