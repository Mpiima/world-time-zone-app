// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sacco/pages/home.dart';
import 'package:sacco/pages/loading.dart';
import 'package:sacco/pages/choose_location.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// void main() {
//
//   // runApp(const MyApp());
//   runApp(
//       MaterialApp(
//       initialRoute: '/',
//       routes: {
//       '/' : (context) => Loading(),
//       '/home' : (context) => Home(),
//       '/location' : (context) => ChooseLocationState(),
//       }
//       ) );
// }

void main() => runApp(
    MaterialApp(
 initialRoute: '/',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/location' : (context) => ChooseLocationState(),
  },
));

