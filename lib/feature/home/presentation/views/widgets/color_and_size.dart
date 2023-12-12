import 'package:flutter/material.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/feature/home/data/models/product_model.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                    isSelected: false,
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                    isSelected: false,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: kTextColor),
                  children: [
                    const TextSpan(text: "Size\n\n"),
                    TextSpan(
                      text: '\$${productModel.size} cm',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    required this.isSelected,
  });
  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPadding,
        right: kDefaultPadding,
      ),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      padding: const EdgeInsets.all(2.5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
