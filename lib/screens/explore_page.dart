// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:assignment_pyramid/widgets/explore.dart';

class Eplore extends StatefulWidget {
  const Eplore({super.key});

  @override
  State<Eplore> createState() => _EploreState();
}

class _EploreState extends State<Eplore> {
  List<List<String>> bestForYou = [
    ["assets/bellyfatburner.png", "Belly fat burner"],
    ["assets/loose.png", "Loose fat"],
    ["assets/plank.png", "Plank"],
    ["assets/build.png", "Build wider"]
  ];

  List<List<dynamic>> challenges = [
    [
      "assets/fire.png",
      "Plank\nChallenge",
      Color(0xFFe2f8ac),
      Color(0xFfbbf246),
      Colors.black
    ],
    [
      "assets/running.png",
      "Sprint\nChallenge",
      Color(0xff8d9092),
      Color(0xFF192126),
      Colors.white
    ],
    [
      "assets/bottle.png",
      "Squat\nChallenge",
      Color(0xFFdcf7a7),
      Colors.white,
      Colors.black
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F6FA),
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
                      begin: Alignment(-1.00, 0.01),
                      end: Alignment(1, -0.01),
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
                      color: Color(0xFFBBF246),
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
                      color: Color(0xFF192126),
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
                      color: Color(0xFF192126),
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
                      color: Color(0xFF192126),
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
    );
  }
}
