// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:assignment_pyramid/widgets/explore.dart';

class Eplore extends StatefulWidget {
  const Eplore({super.key});

  @override
  State<Eplore> createState() => _EploreState();
}

class _EploreState extends State<Eplore> {
  var currentIndex = 1;
  List<List<String>> bestForYou = [
    ["assets/bellyfatburner.png", "Belly fat burner"],
    ["assets/loose.png", "Loose fat"],
    ["assets/plank.png", "Plank"],
    ["assets/build.png", "Build wider"]
  ];

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];

  List<List<dynamic>> challenges = [
    [
      "assets/fire.png",
      "Plank\nChallenge",
      const Color(0xFFe2f8ac),
      const Color(0xFfbbf246),
      Colors.black
    ],
    [
      "assets/running.png",
      "Sprint\nChallenge",
      const Color(0xff8d9092),
      const Color(0xFF192126),
      Colors.white
    ],
    [
      "assets/bottle.png",
      "Squat\nChallenge",
      const Color(0xFFdcf7a7),
      Colors.white,
      Colors.black
    ],
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF7F6FA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 45.h,
            ),
            Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(23),
                    child: Image.asset(
                      'assets/banner.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 350.w,
                  height: 180.h,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(-1.00, 0.01),
                      end: const Alignment(1, -0.01),
                      colors: [Colors.black, Colors.black.withOpacity(0)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                ),
                Positioned(
                  top: 26.h,
                  left: 26.w,
                  child: Text(
                    'Best Quarantine\nWorkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  top: 133.h,
                  left: 26.w,
                  child: Text(
                    'See more >',
                    style: TextStyle(
                      color: const Color(0xFFBBF246),
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26.w),
                  child: Text(
                    'Best for you',
                    style: TextStyle(
                      color: const Color(0xFF192126),
                      fontSize: 18.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 200.h,
              width: 360.w,
              child: ListView.builder(
                itemCount: 2,
                // shrinkWrap: true,
                // padding: EdgeInsets.only(top: 0.h),
                scrollDirection: Axis.horizontal,
                // Replace with the number of items you have
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      BestForYou(
                        image: bestForYou[index][0],
                        title: bestForYou[index][1],
                      ),
                      BestForYou(
                        image: bestForYou[index + 2][0],
                        title: bestForYou[index + 2][1],
                      )
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26.w),
                  child: Text(
                    'Challenge',
                    style: TextStyle(
                      color: const Color(0xFF192126),
                      fontSize: 18.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 101.h,
              width: 360.w,
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 0.h),
                scrollDirection: Axis.horizontal,
                // Replace with the number of items you have
                itemBuilder: (context, index) {
                  return ChallengeWidget(
                    title: challenges[index][1],
                    image: challenges[index][0] as String,
                    internal: challenges[index][2],
                    external: challenges[index][3],
                    titleColor: challenges[index][4],
                  );
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26.w),
                  child: Text(
                    'Fast Warmup',
                    style: TextStyle(
                      color: const Color(0xFF192126),
                      fontSize: 18.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 200.h,
              width: 360.w,
              child: ListView.builder(
                itemCount: 2,
                // shrinkWrap: true,
                // padding: EdgeInsets.only(top: 0.h),
                scrollDirection: Axis.horizontal,
                // Replace with the number of items you have
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      BestForYou(
                        image: bestForYou[index][0],
                        title: bestForYou[index][1],
                      ),
                      BestForYou(
                        image: bestForYou[index + 2][0],
                        title: bestForYou[index + 2][1],
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   margin: EdgeInsets.all(10),
      //   height: size.width * .155,
      //   decoration: BoxDecoration(
      //     color: Color(0xff1b2125),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black.withOpacity(.15),
      //         blurRadius: 30,
      //         offset: Offset(0, 10),
      //       ),
      //     ],
      //     borderRadius: BorderRadius.circular(50),
      //   ),
      //   child: Padding(
      //       padding: const EdgeInsets.all(1.0),
      //       child: Row(
      //         children: [
      //           InkWell(
      //             onTap: () {},
      //             splashColor: Colors.transparent,
      //             highlightColor: Colors.transparent,
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [],
      //             ),
      //           ),
      //         ],
      //       )),
      // ),
      bottomNavigationBar: GNav(
        backgroundColor: const Color(0xff1b2125),
        rippleColor: Colors.grey[800] as Color,
        hoverColor: Colors.grey[700] as Color,
        haptic: true,
        tabBorderRadius: 25,
        tabMargin: const EdgeInsets.all(12),
        curve: Curves.easeOutExpo,
        duration: const Duration(milliseconds: 100),
        gap: 2,
        color: Colors.white,
        activeColor: Colors.black,
        iconSize: 20,
        tabBackgroundColor: const Color(0xFFBBF246),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        tabs: [
          const GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          const GButton(
            icon: Icons.rocket,
            text: 'Explore',
          ),
          const GButton(
            icon: Icons.analytics,
            text: 'Analytics',
          ),
          const GButton(
            icon: Icons.person_2_rounded,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
