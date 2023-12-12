import 'package:flutter/material.dart';

import 'feature/home/presentation/views/home_view.dart';
//
void main() {
  runApp(const Shop());
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}


