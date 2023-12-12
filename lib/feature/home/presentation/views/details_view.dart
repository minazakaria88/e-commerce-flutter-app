import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/core/utils/asset.dart';
import 'package:shopui/core/utils/navigation.dart';
import 'package:shopui/feature/home/data/models/product_model.dart';

import 'package:shopui/feature/home/presentation/views/widgets/home_details_view_body.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: productModel.color,
      appBar: AppBar(
        backgroundColor: productModel.color,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            returnBack(context);
          },
          icon: SvgPicture.asset(
            AssetData.kBack,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetData.kSearch,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetData.kCart,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
        ],
      ),
      body:  HomeDetailsViewBody(
        productModel: productModel,
      ),
    );
  }
}
