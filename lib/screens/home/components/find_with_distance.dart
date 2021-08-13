import 'package:flutter/material.dart';
import 'package:food_ordering_app/constants.dart';

class FindWithDistance extends StatelessWidget {
  const FindWithDistance({
    Key? key, required this.distance,
  }) : super(key: key);

  final String distance;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // height: 24,
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Find',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          // height: 24,
          margin: EdgeInsets.only(
              left: kDefaultPadding - 16, top: kDefaultPadding - 15),
          child: Text(
            distance +' >',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ),
      ],
    );
  }
}
