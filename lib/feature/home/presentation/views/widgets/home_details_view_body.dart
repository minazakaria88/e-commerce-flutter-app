import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/core/utils/asset.dart';
import 'package:shopui/feature/home/data/models/product_model.dart';
import 'package:shopui/feature/home/presentation/views/widgets/cart_count_with_fav_button.dart';
import 'package:shopui/feature/home/presentation/views/widgets/cart_counter.dart';
import 'package:shopui/feature/home/presentation/views/widgets/color_and_size.dart';
import 'package:shopui/feature/home/presentation/views/widgets/description.dart';
import 'package:shopui/feature/home/presentation/views/widgets/home_details_view_body.dart';
import 'package:shopui/feature/home/presentation/views/widgets/product_title_with_imags.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      ColorAndSize(
                        productModel: productModel,
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Description(productModel: productModel),
                     const CartCountWithFavButton(),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 50,
                              width: 58,
                            decoration: BoxDecoration(
                              color: productModel.color,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: IconButton(
                               icon: SvgPicture.asset(
                                   AssetData.kAddToCart,
                                 colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                               ),
                              onPressed: (){},
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: productModel.color
                                ),
                                onPressed: (){},
                                child: const Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(productModel: productModel),

              ],
            ),
          ),
        ],
      ),
    );
  }
}



