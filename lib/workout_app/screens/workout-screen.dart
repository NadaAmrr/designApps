
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
  double iconDotSize = 10;
  Color selectedItemColor = Color(0xff385562);
  Color unselectedItemColor = Colors.grey.shade500;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  index = 0;
                  isSelected1 = true;
                  isSelected2 = false;
                  isSelected3 = false;
                  isSelected4 = false;
                  setState(() {});
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home_filled, color: isSelected1 ? selectedItemColor : unselectedItemColor),
                    Icon(Icons.circle, color: isSelected1 ? selectedItemColor : unselectedItemColor ,size: iconDotSize,),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  index = 1;
                  isSelected1 = false;
                  isSelected2 = true;
                  isSelected3 = false;
                  isSelected4 = false;
                  setState(() {});
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.navigation_outlined, color: isSelected2 ? selectedItemColor : unselectedItemColor,),
                    Icon(Icons.circle, color: isSelected2 ? selectedItemColor : unselectedItemColor,size: iconDotSize,),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  index = 2;
                  isSelected1 = false;
                  isSelected2 = false;
                  isSelected3 = true;
                  isSelected4 = false;
                  setState(() {});
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.insert_chart_outlined, color: isSelected3 ? selectedItemColor : unselectedItemColor),
                    Icon(Icons.circle, color: isSelected3 ? selectedItemColor : unselectedItemColor,size: iconDotSize,),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  index = 3;
                  isSelected1 = false;
                  isSelected2 = false;
                  isSelected3 = false;
                  isSelected4 = true;
                  setState(() {});
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.person, color: isSelected4 ? selectedItemColor : unselectedItemColor),
                    Icon(Icons.circle, color: isSelected4 ? selectedItemColor : unselectedItemColor,size: iconDotSize,),
                  ],
                ),
              ),
            ],
          ),
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


/***
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

 */