import 'package:exam_c10_friday/workout_app/widgets/rate_widget.dart';
import 'package:exam_c10_friday/workout_app/widgets/regtangle_widget.dart';
import 'package:exam_c10_friday/workout_app/widgets/workoutList_widget.dart';
import 'package:flutter/material.dart';

class WorkOutTab extends StatelessWidget {
  WorkOutTab({super.key});
  List<Widget> listWorkout = [
    WorkoutListWidget(
      title: 'Morning Yoga',
      subtitle: 'Improve mental focus.',
      clock: '30 mins',
      day: '7 days',
      // imagePath: 'assets/images/list1.png',
    ),
    WorkoutListWidget(
      title: 'Plank Exercise',
      subtitle: 'Improve posture and stability.',
      clock: '30 mins',
      day: '3 days',
      // imagePath: 'assets/images/list1.png',
    ),
    WorkoutListWidget(
      title: 'Morning Yoga',
      subtitle: 'Improve posture and stability.',
      clock: '30 mins',
      day: '7 days',
      // imagePath: 'assets/images/list1.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          /// App bar
          AppBar(
              leading: Image.asset("assets/images/workout.png"),
              title: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hallo, Jade",
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Ready to workout?",
                    style: TextStyle(fontSize: 23, color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              actions: const [
                Badge(
                  alignment: Alignment.topRight,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.notifications_none,
                  ),
                ),
              ]),

          /// 1- Rates
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade100,
            ),
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /// 1
                RateWidget(
                    title: "Heart Rate",
                    subtitle: "BPM 81",
                    icon: Icons.favorite_border),
                const RegtangleWidget(),

                ///2
                RateWidget(
                    title: "To-do", subtitle: "32,5 %", icon: Icons.list),
                const RegtangleWidget(),

                ///3
                RateWidget(
                    title: "Calo",
                    subtitle: "1000 Cal",
                    icon: Icons.local_fire_department),
              ],
            ),
          ),

          /// workout program
          Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Workout Programs",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black),
              )),

          /// tab bar
          const DefaultTabController(
              length: 4,
              child: Column(children: [
                TabBar(
                  indicatorColor: Colors.blueGrey,
                  dividerColor: Colors.grey,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                  labelPadding: EdgeInsets.symmetric(horizontal: 2),
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey), // Define label style
                  tabs: [
                    Tab(
                      text: 'All Type',
                    ),
                    Tab(text: 'Full Body'),
                    Tab(text: 'Upper'),
                    Tab(text: 'Lower'),
                  ],
                ),
              ])),

          /// List
          Expanded(
            child: ListView.separated(
              itemCount: listWorkout.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: listWorkout[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 20,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
