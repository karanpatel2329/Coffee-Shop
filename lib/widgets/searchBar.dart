import 'package:flutter/material.dart';
import 'package:coffeshopday04/constant.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      decoration: BoxDecoration(
        color: Color.fromRGBO(244, 243, 243, 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            size: 25,
            color: Constant.darkBrown,
          ),
          hintText: "Search Coffee",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
