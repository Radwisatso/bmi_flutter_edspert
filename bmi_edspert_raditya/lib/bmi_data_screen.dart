import 'package:bmi_edspert_raditya/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 80,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff8d8e98),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        size: 80,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff8d8e98),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) {
                  return BmiResultScreen();
                }),
              ),
            );
          },
          child: Container(
            height: 60,
            color: Colors.blue,
            child: Center(
              child: Text('Calculate BMI'),
            ),
          ),
        )
      ]),
    );
  }
}