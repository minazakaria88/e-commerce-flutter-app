import 'package:flutter/material.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/feature/home/data/models/product_model.dart';
import 'package:shopui/feature/home/presentation/views/widgets/catagories.dart';
import 'package:shopui/feature/home/presentation/views/widgets/item_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: 10),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold,),
          ),
        ),
        const Categories(),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.70,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
              children: List.generate(
                products.length,
                    (index) {
                  return ItemCard(productModel: products[index],);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
