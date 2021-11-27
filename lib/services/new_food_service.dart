import 'package:dio/dio.dart';
import 'package:tuvi_booking/constants/api.dart';
import 'package:tuvi_booking/models/food.dart';

Stream<Food> getnewFood() async* {
  try {
    var response = await Dio().get(url + '/food');
    print(response);
  } catch (e) {
    print(e);
  }
}
