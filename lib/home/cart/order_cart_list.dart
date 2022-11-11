import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:flutter/material.dart';

class OrderListpage extends StatefulWidget {
  const OrderListpage({super.key});

  @override
  State<OrderListpage> createState() => _OrderListpageState();
}

class _OrderListpageState extends State<OrderListpage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: 5,
      itemBuilder:(context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/yamahamt.jpg'),fit: BoxFit.contain)
                    ),
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
                )
              ],
            ),
          ),
        );

    },);
  }
}
