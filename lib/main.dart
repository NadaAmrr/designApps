import 'package:exam_c10_friday/moody_app/moody_screen.dart';
import 'package:exam_c10_friday/news_app/screens/news_screen.dart';
import 'package:exam_c10_friday/workout_app/screens/workout-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /// change initial route to see anther apps
    initialRoute: NewsScreen.routeName,
     routes: {
        /// Moody App
       MoodyScreen.routeName: (context) => const MoodyScreen(),
       /// Workout App
       WorkoutScreen.routeName: (context) => const WorkoutScreen(),
       /// News App
       NewsScreen.routeName: (context) => const NewsScreen(),
     },
    );
  }
}

