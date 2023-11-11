import 'package:bookly/features/home_page/presentaion/views/widgets/custom_app-bar.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListBooks(),
      ],
    );
  }
}

class CustomListBooks extends StatelessWidget {
  const CustomListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomListItem();
          }),
    );
  }
}
