import 'package:flutter/material.dart';

import '../../../constants.dart';

class Tags extends StatelessWidget {
  const Tags({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding, bottom: kDefaultPadding),
            child: Container(
              height: 36,
              width: 90,
              // color: Colors.black,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black),
              child: Center(child: Text('Salads', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
            ),
            
          ),
          SizedBox(width: kDefaultPadding * 1.8 ),
          Text('Hot Sale', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          SizedBox(width: kDefaultPadding * 2.8),
          Text('Popularity', style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
      
    );
  }
}