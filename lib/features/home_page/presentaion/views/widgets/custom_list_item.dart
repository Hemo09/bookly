import 'package:bookly/core/utlis/assets_data.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.5),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetData.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
