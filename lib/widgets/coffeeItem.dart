import 'package:coffeshopday04/page/coffeePage.dart';
import 'package:flutter/material.dart';
import 'package:coffeshopday04/constant.dart';
import 'package:page_transition/page_transition.dart';
class CoffeeItem extends StatelessWidget {
  CoffeeItem({required this.name, required this.price, required this.subHeading});
  String name;
  String subHeading;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(duration: Duration(seconds: 1),type: PageTransitionType.fade, child: CoffeePage()));
            },
            child: Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage("assets/images/cup.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                        color: Constant.lightBrown,
                        borderRadius:
                        BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Constant.whitist,
                          size: 17,
                        ),
                        Text(
                          "4.2",
                          style: TextStyle(color: Constant.whitist),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            name,
            style:
            TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
          ),
          Text(
            subHeading,
            style:
            TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                    text: '\$ ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                    ),
                    children: [
                      TextSpan(
                        text: price,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Constant.darkBrown,
                          fontSize: 20,
                        ),
                      ),
                    ]),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,PageTransition(duration: Duration(seconds: 1),type: PageTransitionType.fade, child: CoffeePage()));
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Constant.green,
                  ),
                  child: Icon(Icons.add,color: Constant.whitist,),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
