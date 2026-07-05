import 'package:flutter/material.dart';
import 'package:pet_resume/core/config/constant/styles.dart';
import 'package:pet_resume/core/feature_discover/view/discover_screen.dart';
import 'package:pet_resume/core/feature_home/widget/list_tile_widget.dart';
import 'package:pet_resume/core/feature_profile/view/profile_screen.dart';

class DrawerScreen extends StatefulWidget {
  Widget screens;
  bool isDiscover = false;
  DrawerScreen({required this.screens});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(widget.isDiscover?Icons.search:Icons.alarm),
        title: widget.isDiscover == false? Text('Profile',style: mediumTextStyle,):null,
        centerTitle: true,

      ),
      drawer: Drawer(
        child:Column(
          children: [
            ListTileWidget(text: 'Discover', onTap: () {
              setState(() {
              widget.screens = DiscoverScreen();
              widget.isDiscover == true;
              });
            },),
            ListTileWidget(text: 'Profile', onTap: () {
              setState(() {
                widget.screens = ProfileScreen();
                widget.isDiscover == false;
              });
            },),
          ],
        ),
      ),
    );
  }
}
