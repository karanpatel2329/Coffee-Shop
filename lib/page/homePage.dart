import 'package:coffeshopday04/constant.dart';
import 'package:coffeshopday04/widgets/category.dart';
import 'package:coffeshopday04/widgets/coffeeItem.dart';
import 'package:coffeshopday04/widgets/offerItem.dart';
import 'package:coffeshopday04/widgets/searchBar.dart';
import 'package:coffeshopday04/widgets/topBar.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.whitist,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.012,
                ),
                Text(
                  "Good Morning, David",
                  style: TextStyle(
                      color: Constant.darkBrown,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.012,
                ),
                SearchBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.012,
                ),
                Text(
                  "Category",
                  style: TextStyle(
                      color: Constant.darkBrown,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.012,
                ),
                Category(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CoffeeItem(name: "Cappuccino",price: '5.12',subHeading: "with chocolate",),
                    SizedBox(
                      width: 15,
                    ),
                    CoffeeItem(name: "Cappuccino",price: '10.24',subHeading: "with low fat milk",)
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Text(
                  "Special Offer 🔥",
                  style: TextStyle(
                      color: Constant.darkBrown,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                OfferItem(image: 'assets/images/cup.jpg', offerName: "Discount Sale", offerTitle: "Get three ice flavoured cappuccino for price of two."),
                OfferItem(image: 'assets/images/coffee.png', offerName: "New Year Sale", offerTitle: "Buy one Get one Free.")

              ],
            ),
          ),
        ),
      ),
    );
  }
}

