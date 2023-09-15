import 'package:flutter/material.dart';
import 'package:islami_friday_c9/ui/screens/home_screen/home_screen.dart';
import 'package:islami_friday_c9/ui/screens/sura_details_screen/sura_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
