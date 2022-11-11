import 'package:autoelx/common/decorations.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:flutter/material.dart';

class RentBikeList extends StatefulWidget {
  const RentBikeList({super.key});

  @override
  State<RentBikeList> createState() => _RentBikeListState();
}

class _RentBikeListState extends State<RentBikeList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,bottom: 0.0,right: 8.0),
      child: GridView.builder(
        itemCount: 20,
        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          childAspectRatio: 2/2.5,
      crossAxisCount:3, ),
        itemBuilder:(context, index) {
          return Card(
            elevation: 5,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                decoration: greyContainer,
                
              ),
                Column(
                  children: [
                    
                    Container(
                      height: 85,
               decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/apache.webp'),fit: BoxFit.contain),
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                          ),
              ),
              kheight2,
              Text('''Apache RTR 4V''',textAlign: TextAlign.center, style: vehiclename,),
              kheight2,
                Text('''1,000/D''',style: pricetaghome,)
                  ],
                ),
                
             
              ]
               
            ),
          );
        },),
    );
  }
}