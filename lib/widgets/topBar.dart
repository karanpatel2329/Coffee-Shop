import 'package:flutter/material.dart';
import 'package:coffeshopday04/constant.dart';
class topBar extends StatelessWidget {
  const topBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/profile.png'),
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Constant.green,
            ),
            Text(
              "Lagos, Nigeria",
              style: TextStyle(
                  color: Constant.darkBrown, fontWeight: FontWeight.w500),
            )
          ],
        ),
        Icon(
          Icons.notifications_none_outlined,
          color: Constant.darkBrown,
          size: 30,
        )
      ],
    );
  }
}
