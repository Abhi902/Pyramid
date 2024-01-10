import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestForYou extends StatelessWidget {
  String image;
  String title;
  BestForYou({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h, left: 26.w, right: 10.w),
      child: Stack(
        children: [
          Container(
            width: 194.w,
            height: 86.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.w),
                  child: Container(
                    width: 73.w, // Set the desired width
                    height: 74.h, // Set the desired height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // Adjust the border radius as needed
                      image: DecorationImage(
                        image: AssetImage(image),
                        // Replace with your image asset
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belly fat burner',
                        style: TextStyle(
                          color: Color(0xFF192126),
                          fontSize: 14.sp,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.w, vertical: 2.h),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF1F1F1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10 min',
                              style: TextStyle(
                                color: Color(0xB2192126),
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 3),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF1F1F1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Beginner',
                              style: TextStyle(
                                color: Color(0xB2192126),
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChallengeWidget extends StatelessWidget {
  String title;
  String image;
  Color internal;
  Color external;
  Color titleColor;

  ChallengeWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.internal,
    required this.external,
    required this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 26.w),
      child: Stack(
        children: [
          Container(
            width: 114.56.w,
            decoration: ShapeDecoration(
              color: external,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9)),
            ),
          ),
          Positioned(
            right: 8.w,
            bottom: 7.h,
            child: Image.asset(
              image,
              height: 60.h,
              color: internal,
            ),
          ),
          Positioned(
            bottom: 7.35.h,
            left: 8.33.w,
            child: Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 14.sp,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
