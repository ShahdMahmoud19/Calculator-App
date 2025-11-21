import 'package:flutter/material.dart';
import 'dart:math';

class Calcapp extends StatefulWidget {
  const Calcapp({super.key});

  @override
  State<Calcapp> createState() => _CalcappState();
}

class _CalcappState extends State<Calcapp> {
  int num1 = 0;
  int num2 = 0;
  num result = 0;
  String sign = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 235, 143, 174),
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    height: 100,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 235, 143, 174),
                    ),
                    child: Text(
                      "$num1",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "$sign",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 235, 143, 174),
                    ),
                    child: Text(
                      "$num2",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "=",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 235, 143, 174),
                    ),
                    child: Text(
                      "$result",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //whyyyyyyy
              //  SizedBox(height: 90),
              Text(
                "The first Number",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 25),
              Text(
                "The Second Number",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,

                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          num1++;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Icon(
                        Icons.add,
                        size: 25,
                        color: const Color.fromARGB(255, 235, 143, 174),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  SizedBox(
                    width: 40,
                    height: 40,

                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          num1--;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Icon(
                        Icons.remove,
                        size: 25,
                        color: const Color.fromARGB(255, 235, 143, 174),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(width: 70),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,

                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          num2++;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Icon(
                        Icons.add,
                        size: 25,
                        color: const Color.fromARGB(255, 235, 143, 174),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  SizedBox(
                    width: 40,
                    height: 40,

                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          num2--;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Icon(
                        Icons.remove,
                        size: 25,
                        color: const Color.fromARGB(255, 235, 143, 174),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  setState(() {
                    result = num1 + num2;
                    sign = '+';
                  });
                },

                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "+ Addition",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(width: 20),
              FilledButton(
                onPressed: () {
                  setState(() {
                    result = num1 - num2;
                    sign = '-';
                  });
                },

                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "- Subtraction",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  setState(() {
                    result = num1 * num2;
                    sign = '×';
                  });
                },

                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "×  Multiplication ",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(width: 20),
              FilledButton(
                onPressed: () {
                  if (num2 != 0) {
                    setState(() {
                      result = num1 / num2;
                      sign = '÷';
                    });
                  }
                },

                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "÷  Division",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  setState(() {
                    result = pow(num1, num2);
                    sign = '^';
                  });
                },

                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "^ exponentition",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(width: 20),
              FilledButton(
                onPressed: () {
                  setState(() {
                    result = num1 % num2;
                    sign = '%';
                  });
                },

                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "% modulus",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          CircleAvatar(
            radius: 90,
            backgroundColor: const Color.fromARGB(255, 235, 143, 174),
            backgroundImage: AssetImage('assets/images/maths-operation.webp'),
            child: TextButton(
              onPressed: () {
                setState(() {
                  num1 = 0;
                  num2 = 0;
                  result = 0;
                  sign = '';
                });
              },
              child: Text(
                "Reset all",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
