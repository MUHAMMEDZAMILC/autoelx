import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/decorations.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:autoelx/common/validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderAccessories extends StatefulWidget {
  const OrderAccessories({super.key});

  @override
  State<OrderAccessories> createState() => _OrderAccessoriesState();
}

class _OrderAccessoriesState extends State<OrderAccessories> {
  var dropdownvalue = '1';
  var dpvalues = ['1', '2', '3', '4', 'more'];
  final _addressController = TextEditingController();
  final _pinnoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Order'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: whitecolor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Container(
                width: double.infinity,
                height: 150,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/rrmirror1.jpg'),
                              fit: BoxFit.contain)),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: whitecolor,
                        ),
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
                              Form(
                                
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('12000/unit',style: pricetaggreen,),
                                        Container(
                                          width: 120,
                                          height: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: DropdownButtonFormField<String>(
                                                icon: Icon(Icons.keyboard_arrow_down_outlined,size: 30,),
                                                            value: dropdownvalue,
                                                            decoration:  InputDecoration(
                                          labelText: "Qty",
                                          labelStyle: GoogleFonts.poppins(
                                            color: blackcolor,
                                          ),
                                          
                                          border: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                              Radius.circular(0.0),
                                              ),
                                              borderSide: BorderSide(
                                              color: Colors.grey,
                                              ),
                                          ),
                                          enabledBorder: const OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(0.0)),
                                              borderSide: BorderSide(
                                              color: Colors.grey,
                                              ),
                                          ),
                                          focusedBorder: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(0)),
                                            borderSide: BorderSide(
                                              width: 2,
                                              color: ambercolor
                                            )
                                          )
                                                            ),
                                                            onChanged: (String? newValue) => setState(() => dropdownvalue = newValue!),
                                                            validator: (value) =>
                                              value == null ? 'field required' : null,
                                                            items:dpvalues.map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                          );
                                                            }).toList(),
                                                          ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('Address',style:addressname,),
                      ),
                      kheight10,
                      TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      controller: _addressController,
                      validator: (value) {
                        return Validate.addressValidator(value!);
                      },
                      decoration: InputDecoration(
                          labelText: 'Address',
                          labelStyle: const TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                 width: 2.0,
                                color: Colors.amber)),
                                suffixIcon: const Icon(Icons.location_on,color: ambercolor,),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                    kheight15,
                      TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _pinnoController,
                      validator: (value) {
                        return Validate.pinValidator(value!);
                      },
                      decoration: InputDecoration(
                          labelText: 'Pin ',
                          labelStyle: const TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                 width: 2.0,
                                color: Colors.amber)),
                                suffixIcon: const Icon(Icons.pin,color: ambercolor,),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                    kheight15,
                    kheight40,
                    kheight40,
                      
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text('Price Details',style:addressname,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Price (1 item)',style: priceorder,),
                                Text('12000',style: pricetaggreenlarge,)
                              ],
                            ),
                           kheight10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Delivery Charge',style: priceorder,),
                                Text('200',style: pricetaggreenlarge,)
                              ],
                            ),
                            kheight5,
                            const Divider(
                              thickness: 3,
                              color: blackshade,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Amount',style: addressname,),
                                Text('12200',style: pricetagblacklarge,)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
        
            ],
          ),
        ),
      ),
     bottomSheet: Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(color: whitecolor,
              border: Border(top: BorderSide(color: blackcolor))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('12200',style: addressname,),
          kwidth0,
          Container(
            height: 50,
            child: ElevatedButton(
              style: buttonstyleamber,
              onPressed: (){}, child: Text('Confirm Order',style: pricetagblacklarge,)),
          )
        ],
      ),
     ),
    );
  }
}
