import 'package:flutter/material.dart';
import 'package:coffeshopday04/constant.dart';
class OfferItem extends StatelessWidget {
  OfferItem({required this.image, required this.offerName, required this.offerTitle});
  String image, offerName, offerTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.width*0.3,
          width: MediaQuery.of(context).size.width*0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image:  AssetImage(image),
                fit: BoxFit.cover,
              )
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          width: MediaQuery.of(context).size.width*0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                decoration: BoxDecoration(
                  color: Constant.lightBrown,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(offerName,style: TextStyle(color: Constant.whitist,fontWeight: FontWeight.w600),),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.015,
              ),
              Text(offerTitle,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),)
            ],
          ),
        ),
      ],
    );
  }
}
