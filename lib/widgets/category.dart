import 'package:flutter/material.dart';

import '../constant.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  String selected = "cappuccino";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          selected == "cappuccino"
              ? Item(
                  name: "Cappuccino",
                  icon: Icons.coffee,
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = "cappuccino";
                    });
                  },
                  child: UnItem(name: "Cappuccino", icon: Icons.coffee)),
          selected == "cold brew"
              ? Item(
                  name: "Cold Brew",
                  icon: Icons.coffee_maker,
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = "cold brew";
                    });
                  },
                  child: UnItem(name: "Cold Brew", icon: Icons.coffee_maker)),
          selected == "Espresso"
              ? Item(
            name: "Espresso",
            icon: Icons.coffee,
          )
              : GestureDetector(
              onTap: () {
                setState(() {
                  selected = "Espresso";
                });
              },
              child: UnItem(name: "Espresso", icon: Icons.coffee)),
          selected == "Latte"
              ? Item(
            name: "Latte",
            icon: Icons.coffee_maker,
          )
              : GestureDetector(
              onTap: () {
                setState(() {
                  selected = "Latte";
                });
              },
              child: UnItem(name: "Latte", icon: Icons.coffee_maker)),
        ],
      ),
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
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          color: Constant.green,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Icon(
            icon,
            color: Constant.whitist,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Constant.whitist),
          )
        ],
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
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          color: Color(0xffD3D3D3).withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Icon(
            icon,
            color: Constant.darkBrown,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Constant.darkBrown),
          )
        ],
      ),
    );
  }
}
