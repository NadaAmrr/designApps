import 'package:exam_c10_friday/moody_app/tabs/moody_tab.dart';
import 'package:flutter/material.dart';

class MoodyScreen extends StatefulWidget {
  static const String routeName = "MoodyHome";
  const MoodyScreen({Key? key}) : super(key: key);

  @override
  State<MoodyScreen> createState() => _MoodyScreenState();
}

class _MoodyScreenState extends State<MoodyScreen> {
  int index = 0;
  double iconDotSize = 10;
  Color selectedItemColor = Color(0xff027A48);
  Color unselectedItemColor = Color(0xff667085);
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Container(
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
                  Icon(Icons.grid_view, color: isSelected2 ? selectedItemColor : unselectedItemColor,),
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
                  Icon(Icons.calendar_today, color: isSelected3 ? selectedItemColor : unselectedItemColor),
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
      body:  tabs[index]);
  }
  List<Widget> tabs = const [
     MoodyTab(),
     GridTab(),
     CalenderTab(),
     ProfileTab(),
  ];
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class CalenderTab extends StatelessWidget {
  const CalenderTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class GridTab extends StatelessWidget {
  const GridTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
/***
    BottomAppBar(
    height: MediaQuery.of(context).size.height * 0.13,
    padding: EdgeInsets.zero,
    child: BottomNavigationBar(
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
    selectedItemColor: const Color(0xff027A48),
    unselectedItemColor: const Color(0xff667085),
    selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xff027A48), fontSize: 10), // Define selected label style
    items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ".",),
    BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "."),
    BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "."),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "."),
    ],
    ),
    ),

 */