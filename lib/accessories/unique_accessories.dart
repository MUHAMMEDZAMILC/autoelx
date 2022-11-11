import 'package:autoelx/buying/order_accessories_page.dart';
import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:autoelx/home/cart/cart_list_page.dart';
import 'package:autoelx/home/scooter/scooter_list_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UniqueAccessories extends StatefulWidget {
  const UniqueAccessories({super.key});

  @override
  State<UniqueAccessories> createState() => _UniqueAccessoriesState();
}

class _UniqueAccessoriesState extends State<UniqueAccessories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Mirror'),
        actions:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
              //  Navigator.push(context,MaterialPageRoute(builder: (context)=>CartListPage()));
              },
              child: Icon(Icons.shopping_cart_outlined)),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                    color: greycolor,
                    boxShadow: [
                      BoxShadow(
                          color: blackshade,
                          offset: Offset(2, 7),
                          blurRadius: 15),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/rrmirror1.jpg'),
                              fit: BoxFit.contain)),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: whitecolor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '''Jmen for Rolls Royce side view Mirror & car rear wing Mirror Glass ''',
                                style: accessoryname,
                              ),
                              kheight2,
                              Text(
                                '''Surface Finish: Black''',
                                style: vehiclename,
                              ),
                              kheight2,
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text('12000/unit',style: pricetaggreen,),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    ambercolor)),
                                        onPressed: () {
                                          Get.to(()=>OrderAccessories());
                                        },
                                        child: const Text('Buy Now',style: TextStyle(color: blackcolor),))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
