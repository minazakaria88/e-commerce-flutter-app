
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/core/utils/asset.dart';
import 'package:shopui/feature/home/presentation/views/widgets/cart_counter.dart';

class CartCountWithFavButton extends StatelessWidget {
  const CartCountWithFavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CartCounter(),
          Container(
            height: 32,
            width: 32,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(AssetData.kHeart),
          ),
        ],
      ),
    );
  }
}