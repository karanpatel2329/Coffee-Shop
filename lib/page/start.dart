import 'package:coffeshopday04/page/homePage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../constant.dart';
class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/images/coffee.png'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
            Column(
              children: [
                Text(
                  "Coffee so good,",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Constant.darkBrown),
                ),
                Text(
                  "your taste buds",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Constant.darkBrown),
                ),
                Text(
                  "will love it",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Constant.darkBrown),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Column(
              children: [
                Text(
                  "The best grain, the finest roast,the,",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Constant.darkBrown),
                ),
                Text(
                  "most powerful flavour",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Constant.darkBrown),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, PageTransition(duration: Duration(seconds: 1),type: PageTransitionType.fade, child: HomePage()));

              },
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                decoration: BoxDecoration(
                    color: Constant.green,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Center(child: Text("Get Started",style: TextStyle(color: Constant.whitist,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
