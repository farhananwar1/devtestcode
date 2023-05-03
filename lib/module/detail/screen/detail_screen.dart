import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techinnovative/utils/widget/common_action_button.dart';

import '../../../utils/theme/color_const.dart';

class DetailScreen extends StatelessWidget {
  final String timePoint;
  final String cloudcover;

  const DetailScreen(
      {Key? key, required this.timePoint, required this.cloudcover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.all(20),
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Time Point: $timePoint",
                                style: TextStyle(color: MyColors.blackColor),
                              )),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Cloud Cover:  $cloudcover",
                                style: TextStyle(color: MyColors.blackColor),
                              )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
