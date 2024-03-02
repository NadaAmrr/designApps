import 'package:exam_c10_friday/moody_app/widgets/exercise.dart';
import 'package:exam_c10_friday/moody_app/widgets/feature.dart';
import 'package:exam_c10_friday/moody_app/widgets/moody.dart';
import 'package:exam_c10_friday/widgets_common/title.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MoodyTab extends StatefulWidget {
  const MoodyTab({super.key});

  @override
  State<MoodyTab> createState() => _MoodyTabState();
}

class _MoodyTabState extends State<MoodyTab> {
  final _controller = PageController();
  double heightFixed = 5;
  // double height = MediaQuery.of(context).size.height;
  List<Widget> pages = [
    const FeatureWidget(),
    const FeatureWidget(),
    const FeatureWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ///Appbar
            AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: const ImageIcon(
                  AssetImage("assets/images/logo.png"),
                  color: Colors.green,
                ),
                title: const Text(
                  "Moody",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                actions: [
                  const Badge(
                    child: Icon(
                      Icons.notifications_none,
                    ),
                  ),
                ]),

            /// 1- Mood container
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              child: Column(children: [
                /// title =======================================
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xff371B34)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sara Rose",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xff371B34)),
                    ),
                  ],
                ),
                SizedBox(
                  height: heightFixed,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("How are you feeling today",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff371B34)))),
                SizedBox(
                  height: heightFixed,
                ),

                /// Moody ==========================================
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MoodyWidget(
                          text: "Love", image: "assets/images/love.png", onTap: () {},),
                      MoodyWidget(
                          text: "Cool", image: "assets/images/cool.png", onTap: () {},),
                      MoodyWidget(
                          text: "Happy", image: "assets/images/happy.png", onTap: () {},),
                      MoodyWidget(text: "Sad", image: "assets/images/sad.png", onTap: () {},),
                    ]),
              ]),
            ),
            const Spacer(),

            /// 2- Feature container
            SizedBox(
              height: MediaQuery.of(context).size.height * (0.28),
              child: Column(
                children: [
                  /// Features
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: TitleWidget(
                      title: "Feature",
                      subtitle: "See more",
                      color: const Color(0xff027A48), onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * (0.2),
                    child: PageView.builder(
                      controller: _controller,
                      itemBuilder: (BuildContext context, int index) {
                        return pages[index];
                      },
                      onPageChanged: (index) {},
                      itemCount: pages.length,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: pages.length,
                      effect: const ScrollingDotsEffect(
                          activeDotColor: Color(0xff98A2B3),
                          dotColor: Color(0xffD9D9D9),
                          dotHeight: 7,
                          dotWidth: 7),
                      onDotClicked: (index) {
                        _controller.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            /// 3- Exercise container
            ///Exercise
            SizedBox(
              height: MediaQuery.of(context).size.height * (0.23),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: TitleWidget(
                      title: "Exercise",
                      subtitle: "See more",
                      color: const Color(0xff027A48), onTap: () {},
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(15),
                        child: ExerciseWidget(
                          text: "Relaxation",
                          image: "assets/images/Relaxation.png",
                          color: const Color(0xffF9F5FF),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(15),
                        child: ExerciseWidget(
                          text: "Meditation",
                          image: "assets/images/Meditation.png",
                          color: const Color(0xffFDF2FA),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(15),
                        child: ExerciseWidget(
                          text: "Beathing",
                          image: "assets/images/Beathing.png",
                          color: const Color(0xffFFFAF5),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(15),
                        child: ExerciseWidget(
                          text: "Yoga",
                          image: "assets/images/Yoga.png",
                          color: const Color(0xffF0F9FF),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// SizedBox(
//   // height: MediaQuery.of(context).size.height * (0.5),
//   child: GridView.count(
//     physics: NeverScrollableScrollPhysics(), // Disable scrolling
//     crossAxisCount: 2,
//     // mainAxisSpacing: MainAxisSize.min,
//     children: <Widget>[
//       ExerciseWidget(text: "Relaxation", image: "assets/images/Relaxation.png", color: Color(0xffF9F5FF),),
//       ExerciseWidget(text: "Meditation", image: "assets/images/Meditation.png", color: Color(0xffFDF2FA),),
//       ExerciseWidget(text: "Beathing", image: "assets/images/Beathing.png", color: Color(0xffFFFAF5),),
//       ExerciseWidget(text: "Yoga", image: "assets/images/Yoga.png", color: Color(0xffF0F9FF),),
//     ],
//   ),
// )
