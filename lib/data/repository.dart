
import 'package:hermes_store/data/mock/mock-data.dart';

class Repository {
  dynamic getBooks(){
    return MockData.readJson();
  }
}