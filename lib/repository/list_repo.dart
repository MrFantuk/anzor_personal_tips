import 'package:anzor_personal_tips/service/list_service.dart';

class ListRepository {
  final List<int> listOfNumbers = [];
  Future<void> fetchDataFromInternet() async {
    //Обращение к list_service.dart
    await ListService().fetchHello();
    await ListService().fetchHello2();
  }
}
