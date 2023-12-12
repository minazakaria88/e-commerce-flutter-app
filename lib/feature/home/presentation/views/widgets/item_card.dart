import 'package:flutter/material.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/core/utils/navigation.dart';
import 'package:shopui/feature/home/data/models/product_model.dart';
import 'package:shopui/feature/home/presentation/views/details_view.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goTo(context,  HomeDetailsView(
          productModel: productModel,
        ),);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            width: 160,
            height: 180,
            decoration: BoxDecoration(
              color: productModel.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(productModel.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              productModel.title,
              style: const TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Text(
            "\$${productModel.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
