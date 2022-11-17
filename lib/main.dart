import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/addPhoto.dart';
import 'views/career.dart';
import 'views/education.dart';
import 'views/homeView.dart';
import 'views/interests.dart';
import 'views/keySkills.dart';
import 'views/personalStatement.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'views/projects.dart';
import 'views/references.dart';
import 'views/viewCV.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
      designSize: const Size(392.72727272727275, 856.7272727272727),
      builder: (context , child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '',
          home: Home(),
          routes: {
            '/ContactInfo': (context) => Home(),
            '/PersonalStatement': (context) => PersonalStatement(),
            '/Career': (context) => Career(),
            '/Education': (context) => Education(),
            '/KeySkills': (context) => KeySkills(),
            '/Projects': (context) => Projects(),
            '/Interests': (context) => Interests(),
            '/References': (context) => References(),
            '/AddPhoto': (context) => AddPhoto(),
            '/ViewCV': (context) => ViewCV(),
          },
        );
      },
    );
  }
}