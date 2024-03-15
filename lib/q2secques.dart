import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manas/fourthques.dart';
import 'package:manas/q2firstques.dart';
import 'package:manas/result.dart';
import 'package:manas/sec.dart';
import 'package:manas/sixthques.dart';

class q2secques extends StatefulWidget {
  @override
  _q2secquesState createState() => _q2secquesState();
}

class _q2secquesState extends State<q2secques> {
  Map<String, List<String>> _selectedOptionsMap = {};

  Widget _buildCheckboxListTile(String title, String value, String group) {
    if (!_selectedOptionsMap.containsKey(group)) {
      _selectedOptionsMap[group] = [];
    }

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
      child: CheckboxListTile(
        title: Text(title),
        value: _selectedOptionsMap[group]!.contains(value),
        onChanged: (checked) {
          setState(() {
            if (checked != null) {
              if (checked) {
                _selectedOptionsMap[group]!.add(value);
              } else {
                _selectedOptionsMap[group]!.remove(value);
              }
            }
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '2. Do you have any of the following diseases?',
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
                      _buildCheckboxListTile('Obesity', 'Obesity', 'group1'),
                      _buildCheckboxListTile(
                          'Type 2 Diabetes', 'Type 2 Diabetes', 'group2'),
                      _buildCheckboxListTile(
                          'Hypertension', 'Hypertension', 'group3'),
                      _buildCheckboxListTile(
                          'Heart Diseases', 'Heart Diseases', 'group4'),
                      _buildCheckboxListTile(
                          'Chronic Obstructive Pulmonary Disease (COPD)',
                          'Chronic Obstructive Pulmonary Diseases (COPD)',
                          'group5'),
                      _buildCheckboxListTile('Asthma', 'Asthma', 'group6'),
                      _buildCheckboxListTile(
                          'Osteoporosis', 'Osteoporosis', 'group7'),
                      _buildCheckboxListTile('Anxiety', 'Anxiety', 'group8'),
                      _buildCheckboxListTile('Cancer', 'Cancer', 'group9'),
                      _buildCheckboxListTile(
                          'Polycystic Ovarian Disease (PCOD)',
                          'Polycystic Ovarian Disease (PCOD)',
                          'group10'),
                      _buildCheckboxListTile('Chronic Kidney Failure',
                          'Chronic Kidney Failure', 'group11'),
                      _buildCheckboxListTile('Alzheimers Disease',
                          'Alzheimers Disease', 'group12'),
                      _buildCheckboxListTile(
                          'Arthritis', 'Arthritis', 'group13'),
                      _buildCheckboxListTile(
                          'High Cholesterol', 'High Cholestrol', 'group14'),
                      _buildCheckboxListTile('Headache', 'Headache', 'group15'),
                      _buildCheckboxListTile('Migrane', 'Migrane', 'group16'),
                      _buildCheckboxListTile('High-Blood Pressure',
                          'High-Blood Pressure', 'group17'),
                      _buildCheckboxListTile(
                          'Colorectal Cancer', 'Colorectal Cancer', 'group18'),
                      _buildCheckboxListTile(
                          'Breast Cancer', 'Breast Cancer', 'group19'),
                      _buildCheckboxListTile(
                          'Prostate Cancer', 'Prostate Cancer', 'group20'),
                      _buildCheckboxListTile('Allergy', 'Allergy', 'group21'),
                      _buildCheckboxListTile('None', 'None', 'group22'),

                      // Add more checkboxes here
                    ],
                  ),
                  SizedBox(height: 20),
                  if (_selectedOptionsMap.values
                      .any((options) => options.isNotEmpty))
                    // Container(
                    //   padding: EdgeInsets.all(8),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: _selectedOptionsMap.entries
                    //         .where((entry) => entry.value.isNotEmpty)
                    //         .map((entry) => Text(
                    //               '${entry.key}: ${entry.value.join(', ')}',
                    //               style: TextStyle(color: Colors.white),
                    //             ))
                    //         .toList(),
                    //   ),
                    // ),
                    SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.all(16),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('prev'),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize: MaterialStateProperty.all(Size(130, 60))),
                    onPressed: () {
                      if (_selectedOptionsMap.values
                          .any((options) => options.isNotEmpty)) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => result(),
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
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
