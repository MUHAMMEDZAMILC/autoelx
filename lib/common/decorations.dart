import 'package:autoelx/common/colors.dart';
import 'package:flutter/material.dart';

const scoffoldd = BoxDecoration(
  image: DecorationImage(
    colorFilter: ColorFilter.mode( blackshade,BlendMode.darken),
    image:AssetImage('assets/images/background.png'),fit: BoxFit.cover)
);

const amberbackground = BoxDecoration(
  color: ambercolor,
);

const greyContainer = BoxDecoration(
  color: Color(0xFFE4E1DB),
  borderRadius: BorderRadius.all(Radius.circular(5))
);
 const circleContainer = BoxDecoration(
  image: DecorationImage(image: AssetImage('assets/images/rr.png'),fit: BoxFit.contain),
    borderRadius: BorderRadius.all(Radius.circular(100)),
    color: whitecolor,
    boxShadow:[ BoxShadow(color: greycolor,offset: Offset(2.0, 7.0),blurRadius: 5,spreadRadius: 1)]
 );

 final buttonstyleamber = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(ambercolor),
  
 );