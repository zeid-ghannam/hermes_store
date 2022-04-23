import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';

class tag extends StatelessWidget {
  final String label;
  final Color? color;
  const tag({
    Key? key, required this.label, this.color = Colors.black45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: const TextStyle(color: Colors.white),),
      // avatar: CircleAvatar(
      //   backgroundColor: Colors.white70,
      //   child: Text(label[0].toUpperCase()),
      // ),
      elevation: 0.0,
      padding: EdgeInsets.all(2.0),
      backgroundColor: color,
    );
  }
}


//book category
// Container(
// width: Dimensions.textItemContainer,
// child: Wrap(
// alignment:WrapAlignment.start ,
// children: books[index]['book_category']
// .map<Widget>(
// (item) => tag(
// label: item,
// color: (colors..shuffle()).first,
// ),
// )
// .toList(),
// ),
// ),