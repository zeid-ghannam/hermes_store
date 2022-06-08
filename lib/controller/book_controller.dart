import 'package:get/get.dart';
import 'package:hermes_store/models/book.dart';

// The controller should contains CRUD (Create object, read (get) object, read (get) all objects, update object, delete object) operations
class BookController extends GetxController {
  final RxList bookList = <Book>[].obs;
}
