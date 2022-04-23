import 'package:flutter/material.dart';
import 'package:hermes_store/shared/widgets/horizontal_list_view.dart';


class MyLibraryBody extends StatefulWidget {
  const MyLibraryBody({Key? key}) : super(key: key);

  @override
  State<MyLibraryBody> createState() => _MyLibraryBodyState();
}

class _MyLibraryBodyState extends State<MyLibraryBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HorizontalListView(text: 'رائج الآن'),
          HorizontalListView(text: 'غير مقروءة'),
          HorizontalListView(text: 'غير مقروءة'),
        ],
      ),
    );
  }
}
