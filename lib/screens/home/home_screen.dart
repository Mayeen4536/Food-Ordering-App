import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: 
      IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/icons8-menu.svg")),
      actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/icons8-search.svg'))
      ],
      
    );
  }
}