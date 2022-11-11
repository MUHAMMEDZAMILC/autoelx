import 'package:autoelx/accessories/unique_accessories.dart';
import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/decorations.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:flutter/material.dart';

class DiffrentAccessories extends StatefulWidget {
  const DiffrentAccessories({super.key});

  @override
  State<DiffrentAccessories> createState() => _DiffrentAccessoriesState();
}

class _DiffrentAccessoriesState extends State<DiffrentAccessories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Rolls Royce',),
      actions: [ Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.shopping_cart_outlined,size: 30,color: blackcolor,),
      )],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 7,
            mainAxisSpacing: 7,
            childAspectRatio: 2/2.3,
          crossAxisCount: 3), 
        itemBuilder:(context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              child: Column(
                children: [
                  kheight2,
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const UniqueAccessories()));
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        boxShadow:[ BoxShadow(color: greycolor,offset: Offset(2.0, 7.0),blurRadius: 5,spreadRadius: 1)],
                        image: DecorationImage(image: AssetImage('assets/images/rrmirror1.jpg'),fit: BoxFit.contain)
                      ),
                      ),
                  ),
                    kheight10,
                    Text('Mirror',style: brandname,)
                ],
              ),
            ),
          );
        },),
      ),
    );
  }
}