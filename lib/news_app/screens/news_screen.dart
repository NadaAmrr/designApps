
import 'package:exam_c10_friday/news_app/screens/tabs/Insights_tab.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  static const String routeName = "NewsHome";
  final List<String> items;
  const NewsScreen(
      {super.key,
      this.items = const [
        'assets/images/topic1.png',
        'assets/images/topic2.png',
      ]});

  @override
  State<NewsScreen> createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.purple.shade400,
          selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple.shade400), // Define selected label style
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                size: 25,
              ),
              label: "Today",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view, size: 25), label: "Insights"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline, size: 25), label: "Chat"),
          ],
        ),
        body: tabs[index],
      ),
    );
  }

  List<Widget> tabs = [
    TodayTab(),
    InsightsTab(),
    ChatTab(),
  ];
}

class TodayTab extends StatelessWidget {
  const TodayTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
