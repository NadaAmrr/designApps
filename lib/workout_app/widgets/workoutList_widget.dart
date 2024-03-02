import 'package:flutter/material.dart';

class WorkoutListWidget extends StatelessWidget {
  String title;
  String subtitle;
  String clock;
  String day;
  // String imagePath = 'assets/images/list1.png';
  WorkoutListWidget({super.key, required this.title, required this.subtitle, required this.clock, required this.day,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.blueGrey.shade50,
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                  child: Text(
                    day,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(Icons.watch_later_outlined, weight: 50,),
                    const SizedBox(width: 5,),
                    Text(clock,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.37,
              child: Image.asset('assets/images/list1.png', fit: BoxFit.fill,)),
        ],
      ),
    );
  }
}
