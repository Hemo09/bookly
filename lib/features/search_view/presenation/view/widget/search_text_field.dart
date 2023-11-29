import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: enabledBorder(),
        focusedBorder: foucusedBorder(),
        suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
              color: Colors.white,
            )),
      ),
    );
  }

  OutlineInputBorder enabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.1),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }

  OutlineInputBorder foucusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.1),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
