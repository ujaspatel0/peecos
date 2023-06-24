import 'package:peecos/data/address.dart';
import 'package:peecos/models/address/city.dart';

class Prefecture {
  Prefecture({required this.code, required this.name, this.cities = const []});

  String code;
  String name;
  List<City> cities = [];

  static List<String> getNames() {
    return Address.prefectures.map((prefecture) => prefecture.name).toList();
  }

  static List<String> getCityNames(String prefectureName) {
    final prefecture = Address.prefectures
        .firstWhere((prefecture) => prefecture.name == prefectureName);
    final result = prefecture.cities.map((city) => city.name).toList();
    result.add('その他町村');
    return result;
  }
}
