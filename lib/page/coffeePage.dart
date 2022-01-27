import 'package:coffeshopday04/constant.dart';
import 'package:coffeshopday04/widgets/coffeeSize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
class CoffeePage extends StatefulWidget {
  const CoffeePage({Key? key}) : super(key: key);

  @override
  _CoffeePageState createState() => _CoffeePageState();
}
bool isReadmore= false;
class _CoffeePageState extends State<CoffeePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/cup.jpg'),
                    )
                ),

                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.4)
                          ],
                          begin: AlignmentDirectional.bottomCenter,
                          end: AlignmentDirectional.topCenter
                      )
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 8),
                                alignment: Alignment.center,
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Constant.whitist,
                                ),
                                child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Constant.darkBrown,
                                    size: 22
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Constant.whitist,
                              ),
                              child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Constant.darkBrown,
                                  size: 22
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0,left: 18,right: 18,bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Cappuccino", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold
                                ),),
                                Text(" with chocolate", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                ),)
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
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
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                bottom:  0,
                child: Container(
                height: MediaQuery.of(context).size.height*0.52,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 600,
                    decoration: BoxDecoration(
                      color: Constant.whitist,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.coffee_maker_outlined ,color: Constant.lightBrown,size: 19),
                                  SizedBox(width: 5,),
                                  Text("Coffee", style: TextStyle(color: Constant.darkBrown,fontSize: 14),)
                                ],
                              ),
                              Text("|",style: TextStyle(color: Constant.darkBrown),),
                              Row(
                                children: [
                                  Icon(Icons.coffee,color: Constant.lightBrown,size: 17,),
                                  SizedBox(width: 5,),
                                  Text("Chocolate", style: TextStyle(color: Constant.darkBrown,fontSize: 14),)
                                ],
                              ),
                              Text("|",style: TextStyle(color: Constant.darkBrown),),
                              Row(
                                children: [
                                  Icon(Icons.local_fire_department,color: Constant.lightBrown,size: 17,),
                                  SizedBox(width: 5,),
                                  Text("Medium Roasted", style: TextStyle(color: Constant.darkBrown,fontSize: 14),)
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                          Text("Coffee Size",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Constant.darkBrown),),
                          CoffeeSize(),
                          Text("About",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Constant.darkBrown),),
                        Container(
                        height: 90,
                        child: ListView(
                          children: [
                            ReadMoreText(
                              'It was first patented by a man named Luigi Bezzera in 1901. It is a derived from the Italian word “cappuccio,” which means “hood.” November 8th is National Cappuccino Day. During World War II cappuccino machines were improved and many restaurants began serving the beverage.',
                              style: TextStyle(color: Constant.darkBrown,fontSize: 16),
                              trimLines: 4,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Constant.green),
                              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Constant.green),
                            ),
                          ],
                        )
                      ),
                          Container(
                            padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: Constant.green,
                              borderRadius: BorderRadius.all(Radius.circular(40))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Add to Cart",style: TextStyle(color: Constant.whitist,fontWeight: FontWeight.w700,fontSize: 20),),
                                Text("|",style: TextStyle(color: Constant.whitist,fontWeight: FontWeight.w500,fontSize: 25),),
                                Text("\$5.12",style: TextStyle(color: Constant.whitist,fontWeight: FontWeight.w400,fontSize: 20),)

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget buildText(String text){

  final lines = isReadmore ? null : 3;
  return Text(
    text,
    style: TextStyle(fontSize: 17),
    maxLines: lines,
    overflow: isReadmore ? TextOverflow.visible: TextOverflow.ellipsis,
  );
}
