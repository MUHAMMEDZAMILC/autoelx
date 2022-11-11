
import 'package:autoelx/buying/order_accessories_page.dart';
import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:autoelx/common/validator.dart';
import 'package:autoelx/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _regformKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _emailIdController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  late bool passwordVisibility;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisibility = false;

  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Form(
            key: _regformKey,
            child: Column(
              children: [
                kheight45,
                kheight30,
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: _userNameController,
                  validator: (value) {
                    return Validate.userNameValidator(value!);
                  },
                  decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: const TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                             width: 2.0,
                            color: Colors.amber)),
                            suffixIcon: const Icon(Icons.person_outline,color: ambercolor,),
                      fillColor: Colors.white,
                      filled: true),
                ),
                kheight15,
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailIdController,
                  validator: (value) {
                    return Validate.emailValidator(value!);
                  },
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                             width: 2.0,
                            color: Colors.amber)),
                            suffixIcon: const Icon(Icons.email_outlined,color: ambercolor,),
                      fillColor: Colors.white,
                      filled: true),
                ),
                kheight15,
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _phoneNumberController,
                  validator: (value) {
                    return Validate.numberValidator(value!);
                  },
                  decoration: InputDecoration(
                      labelText: 'Phonenumber',
                      labelStyle: const TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                             width: 2.0,
                            color: Colors.amber)),
                            suffixIcon: const Icon(Icons.phone_android_outlined,color: ambercolor,),
                      fillColor: Colors.white,
                      filled: true),
                ),
                kheight15,
                TextFormField(
                  obscureText: !passwordVisibility,
                  keyboardType: TextInputType.number,
                  controller: _passwordController,
                  validator: (value) {
                    return Validate.passwordValidator(value!);
                  },
                  decoration: InputDecoration(
                    
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.amber)),
                      suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: ambercolor,
                              
                            ),),
                      fillColor: Colors.white,
                      filled: true),
                ),
               kheight35,
                Container(
                  width: 270,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(whitecolor)),
                      onPressed: () {
                        _regformKey.currentState!.validate();
                        Get.to(()=>OrderAccessories());
                       
                        showsnackbar(Text('Button Click',style:snackbarmsg), Colors.amber);
                      },
                      child:  Text(
                        'Sign Up',
                        style:signbottontext),
                      )),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  showsnackbar(var msg, var color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        
        duration: const Duration(seconds: 2),
        content: msg,
        backgroundColor: color,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all( Radius.circular(5)
                )),
      ),
    );
  }
}
