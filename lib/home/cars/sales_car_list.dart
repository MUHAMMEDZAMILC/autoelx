
import 'package:autoelx/common/decorations.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:autoelx/vehicles%20view/sale_vechicle_view_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SalesCarList extends StatefulWidget {
  const SalesCarList({super.key});

  @override
  State<SalesCarList> createState() => _SalesCarListState();
}

class _SalesCarListState extends State<SalesCarList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,bottom: 0.0,right: 8.0, top: 0.0),
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
                    
                    InkWell(
                      onTap: (){
                        Get.to(()=>SalesVechicleViewPage());
                      },
                      child: Container(
                        height: 85,
                                   decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/cooper2.webp'),fit: BoxFit.contain),
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                            ),
                                  ),
                    ),
              kheight2,
              Text('''Mini Cooper Convertible''',textAlign: TextAlign.center, style: vehiclename,),
              kheight2,
                Text('''51 Lackh''',style: pricetaghome,)
                  ],
                ),
                
             
              ]
               
            ),
          );
        },),
    );
  }
}