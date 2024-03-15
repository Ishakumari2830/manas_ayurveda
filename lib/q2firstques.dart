import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manas/fourthques.dart';
import 'package:manas/q2secques.dart';
import 'package:manas/sec.dart';
import 'package:manas/sixthques.dart';

class q2firstques extends StatefulWidget {
  @override
  _q2firstquesState createState() => _q2firstquesState();
}

class _q2firstquesState extends State<q2firstques> {
  String? _selectedOption;

  Widget _buildRadioListTile(String title, String value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: RadioListTile(
        title: Text(title),
        value: value,
        groupValue: _selectedOption,
        onChanged: (value) {
          setState(() {
            _selectedOption = value as String?;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green.shade400, Colors.green.shade900],
          ),
        ),
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: Colors.green.shade200,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Do you face any problem in your digestion?',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildRadioListTile('Yes', 'Yes'),
                    _buildRadioListTile('No', 'No'),
                    _buildRadioListTile('Sometimes ', 'Sometimes '),
                  ],
                ),
                SizedBox(height: 20),
                if (_selectedOption != null)
                  ListTile(
                    title: Text('Selected Option: $_selectedOption'),
                  ),
                SizedBox(height: 20),
                Row(
                  children: [
                    // Container(
                    //   alignment: Alignment.bottomLeft,
                    //   padding: EdgeInsets.all(16),
                    //   // margin: EdgeInsets.only(right: 200),
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       if (_selectedOption != null) {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //             builder: (context) => fourthques(),
                    //           ),
                    //         );
                    //       } else {
                    //         ScaffoldMessenger.of(context).showSnackBar(
                    //           SnackBar(
                    //             content: Text('Please select an option.'),
                    //           ),
                    //         );
                    //       }
                    //     },
                    //     child: Text('prev'),
                    //   ),
                    // ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.only(left: 200),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_selectedOption != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => q2secques(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Please select an option.'),
                              ),
                            );
                          }
                        },
                        child: Text('Next'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
