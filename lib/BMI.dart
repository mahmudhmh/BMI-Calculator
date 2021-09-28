import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:messengerapp/BMICalculations.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  double height=120;
  int Weight =55;
  int age = 16;
  bool isMale=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        elevation: 12,
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                            isMale=true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_rounded,
                              size: 110,
                              color: Colors.white,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.deepPurple[300] : Colors.deepPurple[100],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                            isMale=false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_rounded,
                              size: 110,
                              color: Colors.white,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: !isMale ? Colors.deepPurple[300] : Colors.deepPurple[100],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
        ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: Colors.deepPurple,
                      inactiveColor: Colors.white,
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value){
                        setState(() {
                          height=value;
                        });
                      },
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple[100],
                ),
              ),
            ),
          ), 
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                        setState(() {
                                          age--;
                                        });
                              },
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepPurple,
                                mini: true,
                                child: Icon(
                                Icons.remove,
                              ),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepPurple,
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepPurple[100],
                    ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '$Weight',
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    Weight--;
                                  });
                                },
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepPurple,
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepPurple,
                                onPressed: (){
                                  setState(() {
                                    Weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple[100],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            child: MaterialButton(
              onPressed: (){
              var Result = Weight/ pow(height/100,2);
              print(Result.round());
                Navigator.push(
                  context,
                MaterialPageRoute(
                  builder: (context) => BMICalculations(
                    age: age,
                    isMale: isMale,
                    result: Result.round(),
                  ),
                ),
                );
            },
              color: Colors.deepPurple[300],
            child: Text(
                'CALCULATE',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color:Colors.white,
              ),
            ),
            ),

          ),
        ],
      ),
    );

  }
}
