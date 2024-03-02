import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam_c10_friday/news_app/screens/tabs/getTepWidget.dart';
import 'package:exam_c10_friday/news_app/widgets/chip.dart';
import 'package:exam_c10_friday/news_app/widgets/topic.dart';
import 'package:exam_c10_friday/widgets_common/title.dart';

import 'package:flutter/material.dart';

class InsightsTab extends StatefulWidget {
  const InsightsTab({Key? key}) : super(key: key);

  @override
  State<InsightsTab> createState() => _InsightsTabState();
}

class _InsightsTabState extends State<InsightsTab> {
  double heightFixed = 15;
  CarouselController _carouselController = CarouselController();
  int currentIndex = 0;
  late CarouselController controller;
  @override
  void initState() {
    controller = CarouselController();
    super.initState();
  }

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.grey.shade50,
        child: Column(
          children: [
            /// App bar
            AppBar(
              centerTitle: true,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage("assets/images/flower.png"),
                    color: Color(0xffC9B4FF),
                  ),
                  Text(
                    "AliceCare",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
            ),
      
            /// Search
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Articles, Video, Audio and More,...",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            /// choice chips
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              child: Wrap(
                spacing: 6.0,
                runSpacing: 4.0,
                children: <Widget>[
                  ChipWidget(
                      text: "Discover",
                      isSelected: _isSelected,
                      onSelect: (newValue) {
                        setState(() {
                          _isSelected = newValue;
                        });
                      }),
                  ChipWidget(
                      text: "News",
                      isSelected: _isSelected,
                      onSelect: (newValue) {
                        setState(() {
                          _isSelected = newValue;
                        });
                      }),
                  ChipWidget(
                      text: "Most Viewed",
                      isSelected: _isSelected,
                      onSelect: (newValue) {
                        setState(() {
                          _isSelected = newValue;
                        });
                      }),
                  ChipWidget(
                      text: "Saved",
                      isSelected: _isSelected,
                      onSelect: (newValue) {
                        setState(() {
                          _isSelected = newValue;
                        });
                      }),
                ],
              ),
            ),
            SizedBox(height: heightFixed,),

            /// Topics
            TitleWidget(
              title: "Hot topics",
              subtitle: "See all",
              color: const Color(0xff5925DC),
              onTap: () {},
            ),
            SizedBox(height: heightFixed,),


            /// Carousel Slider
            CarouselSlider(
                carouselController: _carouselController,
                items: [
                  TopicWidget(
                    title: "10 Easy Self-Care Ideas That Can",
                    subtitle: "Help Boost Your Health",
                    color: Color(0xffFEF0C7),
                    titleBtn: "self-care",
                    colorBtn: Color(0xff93370D),
                  ),
                  TopicWidget(
                    title: "10 Easy Self-Care Ideas That Can",
                    subtitle: "Help Boost Your Health",
                    color: Color(0xffFEE4E2),
                    titleBtn: "self-care",
                    colorBtn: Color(0xff912018),
                  ),
                  TopicWidget(
                    title: "10 Easy Self-Care Ideas That Can",
                    subtitle: "Help Boost Your Health",
                    color: Color(0xffFEF0C7),
                    titleBtn: "self-care",
                    colorBtn: Color(0xff93370D),
                  ),
                ],
                options: CarouselOptions(
                  // height: 400,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    })),
            SizedBox(height: heightFixed,),

            /// ============================
             TitleWidget(
                        title: "Cycle Phases and Period",
                        subtitle: "See all",
                        color: const Color(0xff5925DC),
                        onTap: () {},
                      ),
            ///
            SizedBox(height: heightFixed,),
            GetTipWidget(),
            SizedBox(height: heightFixed,),
            TitleWidget(
              title: "Cycle Phases and Period",
              subtitle: "See all",
              color: const Color(0xff5925DC),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}




// // Expanded(
// //   child: GridView.count(
// //         crossAxisCount: 2,
// //     children: [
// //       TopicWidget(title: "10 Easy Self-Care Ideas That Can", subtitle: "Help Boost Your Health", color: Colors.yellow, titleBtn: "self-care", imagePath: "assets/images/topic1.png", colorBtn: Colors.black,),
// //       TopicWidget(title: "10 Easy Self-Care Ideas That Can", subtitle: "Help Boost Your Health", color: Colors.yellow, titleBtn: "self-care", imagePath: "assets/images/topic1.png", colorBtn: Colors.black,),
// //     ],
// //   ),
// // ),
// Text(
//   "Get Tips",
//   style: TextStyle(fontWeight: FontWeight.w700),
// ),
// TitleWidget(
//   title: "Cycle Phases and Period",
//   subtitle: "See all",
//   color: Color(0xff5925DC),
//   onTap: () {},
// ),