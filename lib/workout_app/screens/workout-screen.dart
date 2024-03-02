
import 'package:exam_c10_friday/workout_app/screens/tabs/workout_tab.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  static const String routeName = "WorkoutHome";
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          backgroundColor: Colors.white,
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor:  Colors.grey,
          selectedItemColor: const Color(0xff385562),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey.shade700), // Define selected label style
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,), label: ".",),
            BottomNavigationBarItem(icon: Icon(Icons.chevron_right, size: 30), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart_rounded, size: 30), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.person, size: 30), label: "."),
          ],
        ),
        body:  Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 20, left: 20),
          child: tabs[index],
        ));
  }
  List<Widget> tabs = [
    WorkOutTab(),
    ChevronTab(),
    CharTab(),
    ProfileTab(),
  ];
}
class ChevronTab extends StatelessWidget {
  const ChevronTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class CharTab extends StatelessWidget {
  const CharTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



