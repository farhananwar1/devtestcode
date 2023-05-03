
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../core/network_service.dart';
import '../core/repository.dart';
import '../module/home/controller/HomeController.dart';

final kHomeController = Get.put(
    HomeController(repository: Repository(networkService: NetworkService())));