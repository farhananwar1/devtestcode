import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techinnovative/module/detail/screen/detail_screen.dart';

import '../theme/color_const.dart';

class CommonListView extends StatelessWidget {
  final String timePoint;
  final String cloudcover;

  const CommonListView(
      {Key? key, required this.timePoint, required this.cloudcover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                    timePoint: timePoint.toString(),
                    cloudcover: cloudcover.toString())));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100.h,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(20),
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Time Point: $timePoint",
                  style: TextStyle(color: MyColors.blackColor),
                )),
            SizedBox(height: 10.h),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Cloud Cover:  $cloudcover",
                  style: TextStyle(color: MyColors.blackColor),
                )),
          ],
        ),
      ),
    );
  }
}
