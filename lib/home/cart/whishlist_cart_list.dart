import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/decorations.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemCount: 5,
      itemBuilder:(context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/yamahamt.jpg'),fit: BoxFit.contain)
                      ),
                    ),
                    kwidth15,
                    Container(
                      width: 240,
                      height: 120,
                     
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Yamaha MT - 15',style: brandname,),
                        kheight5,
                        Text('2022 Model',style: modelyear,),
                        kheight5,
                        Text('Delivered on July 20',style: snackbarmsg,)
                      ],),
                    ),
                    

                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(border: Border.all(color: greycolor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Remove',style: signbottontext,),
                      VerticalDivider(
                        thickness: 2,
                      ),
                      Text('Buy Now',style: signbottontext,),
                    ],
                  ),
                )
              ],
            ),
          ),
        );

    },);
  }
}