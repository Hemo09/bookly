import 'package:bookly/features/home_page/presentaion/views/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';
class CustomListBooks extends StatelessWidget {
  const CustomListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
          itemCount: 20,
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 16,
            );
          },
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomListItem();
          }),
    );
  }
}
