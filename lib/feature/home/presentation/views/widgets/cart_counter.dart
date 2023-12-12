
import 'package:flutter/material.dart';
import 'package:shopui/constant.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            onPressed: () {
              setState(() {
                if(counter>0)
                {
                  counter--;
                }
              });
            },
            child: const Icon(Icons.remove,),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            counter.toString().padLeft(2,'0'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),

        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Icon(Icons.add,),
          ),
        ),
      ],
    );
  }
}