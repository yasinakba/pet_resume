import 'package:flutter/material.dart';
import 'package:pet_resume/core/config/constant/local_list.dart';
import 'package:pet_resume/core/config/constant/styles.dart';

class DiscoverScreen extends StatelessWidget{
   String currentItem = categories[0];
   DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: ,
      // height: ,
      child: Column(
        children: [
          Text('Discover',style: titleTextStyle,),
          Text('Find a new pet for you',style: mediumTextStyle,),
          Ink(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(categories[index],style: categoryTextStyle,),);
            },),
          ),
        ],
      ) ,
    );
  }
}
