import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/home/components/find_with_distance.dart';
import 'package:food_ordering_app/screens/home/components/header_text.dart';
import 'package:food_ordering_app/screens/home/components/search_box.dart';
import 'package:food_ordering_app/screens/home/components/tags.dart';

import 'food_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderText(size: size),
          SearchBox(),
          FindWithDistance(
            distance: '5km',
          ),
          Tags(),
          Row(
            children: [
              FoodCard(
                  size: size,
                  image: 'assets/images/design1.jpg',
                  text: "Fruit Salad",
                  time: '20min',
                  price: 'BDT250',
                  rate: '4.5', press: (){}),
              Spacer(),
              FoodCard(
                  size: size,
                  image: 'assets/images/design.jpg',
                  text: "Fruit Salad",
                  time: '20min',
                  price: 'BDT250',
                  rate: '4.5', press: (){}),
            ],
          ),
          Row(
            children: [
              FoodCard(
                  size: size,
                  image: 'assets/images/pexels-ｌａｒａ-4040666.jpg',
                  text: "Fruit Salad",
                  time: '20min',
                  price: 'BDT250',
                  rate: '4.5', press: (){}),
              Spacer(),
              FoodCard(
                  size: size,
                  image: 'assets/images/pexels-ｌａｒａ-4040666.jpg',
                  text: "Fruit Salad",
                  time: '20min',
                  price: 'BDT250',
                  rate: '4.5', press: (){}),
            ],
          ),
          Row(
            children: [
              FoodCard(
                  size: size,
                  image: 'assets/images/pexels-ｌａｒａ-4040666.jpg',
                  text: "Fruit Salad",
                  time: '20min',
                  price: 'BDT250',
                  rate: '4.5', press: (){},),
              Spacer(),
              FoodCard(
                  size: size,
                  image: 'assets/images/pexels-ｌａｒａ-4040666.jpg',
                  text: "Fruit Salad",
                  time: '20min',
                  price: 'BDT250',
                  rate: '4.5', press: (){}),
            ],
          ),
        ],
      ),
    );
  }
}

