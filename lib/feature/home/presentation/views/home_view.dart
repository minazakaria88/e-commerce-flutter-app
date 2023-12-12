import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopui/constant.dart';
import 'package:shopui/core/utils/asset.dart';
import 'package:shopui/feature/home/presentation/views/widgets/home_view_body.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){

            },
            icon: SvgPicture.asset(
              AssetData.kBack,
            )
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: SvgPicture.asset(
                AssetData.kSearch,
                colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
              )
          ),

          IconButton(
              onPressed: (){},
              icon: SvgPicture.asset(
                AssetData.kCart,
                colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
              )
          ),
          const SizedBox(
            width: kDefaultPadding/2,
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}

