import 'package:get/get.dart';

import '../../../core/repository.dart';

class HomeController extends GetxController{
  final Repository repository;

  HomeController({required this.repository});

  RxBool isLoading = false.obs;
  RxList data = [].obs;

  getData(context) async{
    isLoading.value = true;
    await repository.getData().then((res) {
      if (res[0] == true) {
        isLoading.value = false;
        data.value = res[1];
      } else {
        isLoading.value = false;
      }
    });
  }
}