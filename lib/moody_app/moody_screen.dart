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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
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
