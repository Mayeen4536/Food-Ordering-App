import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/constants.dart';
import 'package:food_ordering_app/screens/home/components/find_with_distance.dart';
import 'package:food_ordering_app/screens/home/components/header_text.dart';
import 'package:food_ordering_app/screens/home/components/search_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [HeaderText(size: size), SearchBox(),
        FindWithDistance(distance: '5km',),
        Row(
          children: [
            FoodCard(size: size),
            Spacer(),
            FoodCard(size: size),

          ],
        ),
        Row(
          children: [
            FoodCard(size: size),
            Spacer(),
            FoodCard(size: size),

          ],
        ),
        Row(
          children: [
            FoodCard(size: size),
            Spacer(),
            FoodCard(size: size),

          ],
        ),
        ],
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[300],
      margin: EdgeInsets.only(
        left: kDefaultPadding ,
        top: kDefaultPadding,
        bottom: kDefaultPadding ,
        right: kDefaultPadding * 0.9 ,
      ),
      decoration: BoxDecoration(color:Colors.grey[300],borderRadius: BorderRadius.all(Radius.circular(20))),
      
      width: size.width * 0.4,
      child: Column(children: [
        Image.asset('assets/images/pexels-ｌａｒａ-4040666.jpg'),
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
                child: RichText(text: TextSpan(
                  
                    text: 'Fruit Salad'.toUpperCase(),
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18))
                  
                ),
                
              ),
              
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 6),
                child: RichText(text: TextSpan(
                  
                    text: '20min',
                    style: TextStyle(color:Colors.black,fontSize: 15, fontWeight: FontWeight.normal) ),
                  
                ),
                
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom:6.0, right: 6),
                child: Container(
                  height: 18,
                  width: 20,
                  
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SvgPicture.asset('assets/icons/star.svg')
                    
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, bottom: 6),
                child: RichText(text: TextSpan(
                  
                    text: '4.5',
                    style: TextStyle(color:Colors.black,fontSize: 15, fontWeight: FontWeight.normal) ),
                  
                ),
                
              ),
              
            ],
          ),
          Row(children: [
            Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 6, top: 6),
                child: RichText(text: TextSpan(
                  
                    text: 'BDT'+'250',
                    style: TextStyle(color:Colors.black,fontSize: 15, fontWeight: FontWeight.w600) ),
                  
                ),
                
              ),
              
             Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom:6.0, right: 12),
                child: Container(
                  height: 18,
                  width: 20,
                  
                  child: SvgPicture.asset('assets/icons/plus.svg'),
                ),
              ),
              
          ],

          ),
        
      ],),

    );
  }
}

