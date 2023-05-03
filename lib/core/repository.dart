import 'package:techinnovative/core/network_service.dart';

class Repository {
  final NetworkService networkService;

  Repository({required this.networkService});

  Future getData() async {
    final data = await networkService.getData();
    if (data[0] == true) {
      try {
        return [true, data[1]['dataseries']];
      } catch (e) {
        return [false, []];
      }
    }
    return [false, data[1]];
  }
}
