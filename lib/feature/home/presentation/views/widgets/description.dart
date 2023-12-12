
import 'package:flutter/material.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/feature/home/data/models/product_model.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        productModel.description,
        style: const TextStyle(
            height: 1.5
        ),
      ),
    );
  }
}