import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f4f4),
      body: Container(
        width: 360.w,
        height: 690.h,
        child: Column(
          children: [
            SizedBox(
                height: 500.h,
                width: 360.w,
                child: Image.asset('assets/images/background.png',fit: BoxFit.cover,)),
            Text(
              textAlign: TextAlign.center,
              'Proud to Be an\nAdoptive Pet Hero',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontFamily: 'Tenford',),),
            Text(
                textAlign: TextAlign.center,
                'Looking for unconditional love?\n visit the shelter today',style: Theme.of(context).textTheme.titleSmall,),
            InkWell(
              onTap: () {

              },
              child: SizedBox(
                width: 200.w,
                height: 100.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    DottedBorder(
                      options: OvalDottedBorderOptions(
                        dashPattern: [10, 5],
                        strokeWidth: 2,
                        color: Colors.amber,
                        padding: EdgeInsets.all(16),
                      ),
                      child: Text(
                        ' Get started ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
