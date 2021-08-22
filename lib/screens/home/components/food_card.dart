import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ordering_app/constants.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.size,
    required this.image,
    required this.text,
    required this.price,
    required this.time,
    required this.rate, required this.press,
  }) : super(key: key);

  final Size size;
  final String image;
  final String text;
  final String time;
  final String price;
  final String rate;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        // color: Colors.grey[300],
        margin: EdgeInsets.only(
          left: kDefaultPadding * 0.9,
          top: kDefaultPadding,
          bottom: kDefaultPadding,
          right: kDefaultPadding * 0.9,
        ),
        decoration: BoxDecoration(
            color: Color(0xFFDFDFDF),
            borderRadius: BorderRadius.all(Radius.circular(20))),
    
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(
              '$image',
              fit: BoxFit.fill,
            ),
            // Container(
            //   // padding: EdgeInsets.all(kDefaultPadding * 1.2),
            //   decoration: BoxDecoration(
            //     color: Colors.grey[300],
            //     boxShadow: [
            //       BoxShadow(
            //         offset: Offset(0, 7),
            //         blurRadius: 5,
            //         color: Colors.grey.withOpacity(0.2),
            //       )
            //     ]
            //   ),
    
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      text: TextSpan(
                          text: text.toUpperCase(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18))),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 6),
                  child: RichText(
                    text: TextSpan(
                        text: time,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0, right: 6),
                  child: Container(
                    height: 18,
                    width: 20,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SvgPicture.asset('assets/icons/star.svg')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8, bottom: 6),
                  child: RichText(
                    text: TextSpan(
                        text: rate,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 6, top: 6),
                  child: RichText(
                    text: TextSpan(
                        text: price,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0, right: 12),
                  child: Container(
                    height: 18,
                    width: 20,
                    child: SvgPicture.asset('assets/icons/plus.svg'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
