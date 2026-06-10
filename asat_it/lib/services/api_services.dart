import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/car_model.dart';

class ApiService {
  static Future<List<CarModel>> getCars() async {
    final response = await http.get(
      Uri.parse("https://myfakeapi.com/api/cars/"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      List cars = data["cars"];

      return cars.map((car) => CarModel.fromJson(car)).toList();
    }

    return [];
  }
}
