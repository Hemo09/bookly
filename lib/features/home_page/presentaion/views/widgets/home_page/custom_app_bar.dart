import 'package:bookly/core/utlis/app_routes.dart';
import 'package:bookly/core/utlis/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetData.logo,
          height: 20,
        ),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(NamedRouteScreen.kSearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 26,
            )),
      ],
    );
  }
}
