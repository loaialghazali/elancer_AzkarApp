import 'package:azzkar/about_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'azzkar_Screen.dart';
import 'lunch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     localizationsDelegates: [
       GlobalCupertinoLocalizations.delegate,
       GlobalMaterialLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate,
     ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
     initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen': (context) => LunchScreen(),
        '/azzkar_screen': (context) => AzzkarScreen(),
        '/about_screen': (context) => AboutScreen(),
      },
    );
  }
}
