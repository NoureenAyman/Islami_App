import 'package:flutter/material.dart';

class ItemSuraDetailsScreen extends StatelessWidget {
  String content;
  int index;
  ItemSuraDetailsScreen({required this.content,required this.index});
  @override
  Widget build(BuildContext context) {
    return Text(
      '$content(${index+1})',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
      textDirection: TextDirection.rtl,
    );
  }
}
