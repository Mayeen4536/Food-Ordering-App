
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kDefaultPadding * 2.5),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 44,
      decoration: BoxDecoration(
        
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 8),
            blurRadius: 10,
            color: Colors.grey.withOpacity(0.5),
          )
        ]

      ),
      
      child: Row(
        children: [
          Container(
            height: 58,
            width: 30,
            child: SvgPicture.asset("assets/icons/icons8-search.svg")),
          Expanded(
            child: TextField(
              onChanged: (value){},
              decoration: InputDecoration(
                hintText: "Search your favourite food",
                hintStyle: TextStyle(color: kTextColor.withOpacity(0.7)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                // suffixIcon: SvgPicture.asset('assets/icons/levels.svg'),
          
              ),
          
            ),
          ),
          Container(
            height: 58,
            width: 30,
            child: SvgPicture.asset("assets/icons/levels.svg")),
        ],
      ),

      );
  }
}