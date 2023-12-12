import 'package:flutter/material.dart';
import 'package:shopui/constant.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
    required this.text,
    required this.textColor,
    required this.containerColor,
  });
  final String text;
  final Color textColor;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          Container(
            height: 2,
            width: 30,
            color: containerColor,
          ),
        ],
      ),
    );
  }
}
