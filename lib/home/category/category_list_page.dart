import 'package:autoelx/accessories/different_accessory.dart';
import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/decorations.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:flutter/material.dart';

class CatergoryListPage extends StatefulWidget {
  const CatergoryListPage({super.key});

  @override
  State<CatergoryListPage> createState() => _CatergoryListPageState();
}

class _CatergoryListPageState extends State<CatergoryListPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 1),
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 7,
            mainAxisSpacing: 7,
            childAspectRatio: 2/2.7,
          crossAxisCount: 3), 
        itemBuilder:(context, index) {
          return Container(
            
            child: Column(
              children: [
                kheight2,
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => DiffrentAccessories()));
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: circleContainer,
                    ),
                ),
                  kheight10,
                  Text('RR',style: brandname,)
              ],
            ),
          );
        },),
    );
  }
}