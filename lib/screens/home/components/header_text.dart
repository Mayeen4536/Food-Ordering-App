
import 'package:flutter/material.dart';
import 'package:food_ordering_app/constants.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: size.width,
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding + 20),
        
        child: RichText(text: TextSpan(
          style: TextStyle(fontSize: 34.0, color: Colors.black),
          children: [
            TextSpan(
            text: 'Get Your '

          ),
          TextSpan(
            text: 'Best \n', style: TextStyle(fontWeight: FontWeight.bold)

          ),
          TextSpan(
            text: 'Food ', style: TextStyle(fontWeight: FontWeight.bold)

          ),
          TextSpan(
            text: 'Around You'

          ),]

        ),)

      ),
      // Text(' Get Your Best \n Food Around You',
      // style: Theme.of(context).textTheme.headline4,), 
    );
  }
}
