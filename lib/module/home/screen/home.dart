import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:techinnovative/utils/getx_dependencies.dart';
import 'package:techinnovative/utils/theme/color_const.dart';
import 'package:techinnovative/utils/widget/common_listview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kHomeController.isLoading.value = false;
    kHomeController.data.value = [];
    kHomeController.getData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Obx(() {
                  return kHomeController.isLoading.value == true
                      ? const Expanded(
                          child: Center(child: CircularProgressIndicator()))
                      : Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              controller: controller,
                              itemCount: kHomeController.data.length,
                              itemBuilder: (context, index) {
                                final timePoint =
                                    kHomeController.data[index]['timepoint'];
                                final cloudcover =
                                    kHomeController.data[index]['cloudcover'];
                                return CommonListView(
                                    timePoint: timePoint.toString(),
                                    cloudcover: cloudcover.toString());
                              }),
                        );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
