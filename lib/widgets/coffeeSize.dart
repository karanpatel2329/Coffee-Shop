import 'package:flutter/material.dart';

import '../constant.dart';

class CoffeeSize extends StatefulWidget {
  @override
  _CoffeeSizeState createState() => _CoffeeSizeState();
}

class _CoffeeSizeState extends State<CoffeeSize> {
  String selected = "Small";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          selected == "Small"
              ? Item(
            name: "Small",
            icon: Icons.coffee,
          )
              : GestureDetector(
              onTap: () {
                setState(() {
                  selected = "Small";
                });
              },
              child: UnItem(name: "Small", icon: Icons.coffee)),
          selected == "Medium"
              ? Item(
            name: "Medium",
            icon: Icons.coffee_maker,
          )
              : GestureDetector(
              onTap: () {
                setState(() {
                  selected = "Medium";
                });
              },
              child: UnItem(name: "Medium", icon: Icons.coffee_maker)),
          selected == "Large"
              ? Item(
            name: "Large",
            icon: Icons.coffee,
          )
              : GestureDetector(
              onTap: () {
                setState(() {
                  selected = "Large";
                });
              },
              child: UnItem(name: "Large", icon: Icons.coffee)),
        ],
      )
    );
  }
}

class Item extends StatelessWidget {
  Item({required this.name, required this.icon});
  String name;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9),
      decoration: BoxDecoration(
          color: Constant.green,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Text(
        name,
        style: TextStyle(color: Constant.whitist,fontWeight: FontWeight.bold,fontSize: 16),
      ),
    );
  }
}

class UnItem extends StatelessWidget {
  UnItem({required this.name, required this.icon});
  String name;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9),
      decoration: BoxDecoration(
          color: Color(0xffD3D3D3).withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Text(
        name,
        style: TextStyle(color: Constant.darkBrown,fontSize: 16),
      ),
    );
  }
}
