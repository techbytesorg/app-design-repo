import 'package:flutter/material.dart';
// Makes working with binary numebers a bit easier
// 0 = 000
// 1 = 001
// 2 = 010
// 3 = 011
// 4 = 100
// 5 = 101
// 6 = 110 = 1*2^2 + 1*2^1 + 0*2^0
// 7 = 111

// Overflow: 111 + 1 = 1000 = 000
// 999 + 1 = 1000 = 000

// final: commonly used in Stateless Widgets, can be initialized once in the constructor of the Widget
//        CANNOT be modified during runtime
// const: commonly used for constants, CANNOT be modified during compile, init, or runtime

// Custom Colors
const Map<int, Color> customGreenMap = {
  50  : Color.fromRGBO(88, 209, 126, .1),
  100 : Color.fromRGBO(88, 209, 126, .2),
  200 : Color.fromRGBO(88, 209, 126, .3),
  300 : Color.fromRGBO(88, 209, 126, .4),
  400 : Color.fromRGBO(88, 209, 126, .5),
  500 : Color.fromRGBO(88, 209, 126, .6),
  600 : Color.fromRGBO(88, 209, 126, .7),
  700 : Color.fromRGBO(88, 209, 126, .8),
  800 : Color.fromRGBO(88, 209, 126, .9),
  900 : Color.fromRGBO(88, 209, 126,  1),
};

const MaterialColor customGreen = MaterialColor(0xff58d17e, customGreenMap);

const Map<int, Color> customBlueMap = {
  50  : Color.fromRGBO(66, 135, 245, .1),
  100 : Color.fromRGBO(66, 135, 245, .2),
  200 : Color.fromRGBO(66, 135, 245, .3),
  300 : Color.fromRGBO(66, 135, 245, .4),
  400 : Color.fromRGBO(66, 135, 245, .5),
  500 : Color.fromRGBO(66, 135, 245, .6),
  600 : Color.fromRGBO(66, 135, 245, .7),
  700 : Color.fromRGBO(66, 135, 245, .8),
  800 : Color.fromRGBO(66, 135, 245, .9),
  900 : Color.fromRGBO(66, 135, 245,  1),
};

const MaterialColor customBlue = MaterialColor(0xff4287f5, customBlueMap);

// Binary representation List
const List<String> binary_array = [
  "000",
  "001",
  "010",
  "011",
  "100",
  "101",
  "110",
  "111",
];

// List of computation historys
List<String> history = [];