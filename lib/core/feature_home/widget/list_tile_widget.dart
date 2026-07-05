import 'package:flutter/material.dart';
import 'package:pet_resume/core/config/constant/styles.dart';

class ListTileWidget extends StatelessWidget {
  String text;
  VoidCallback onTap;
  ListTileWidget({super.key, required this.text,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(text,style: mediumTextStyle,),
    );
  }
}
