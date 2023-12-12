import 'package:flutter/material.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/feature/home/presentation/views/widgets/category_list_item.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedItem = 0;
  final List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedItem=index;
            });
          },
          child: CategoryListItem(
            text: categories[index],
             textColor: selectedItem == index ? kTextColor : kTextLightColor,
            containerColor: selectedItem == index ? Colors.black : Colors.transparent,
          ),
        ),
        itemCount: categories.length,
      ),
    );
  }
}


