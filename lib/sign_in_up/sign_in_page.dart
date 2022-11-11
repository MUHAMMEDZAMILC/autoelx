
import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:autoelx/common/validator.dart';
import 'package:autoelx/home/homepage.dart';
import 'package:flutter/material.dart';


class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _logformKey = GlobalKey<FormState>();
  final _emailIdController = TextEditingController();
  final _passwordController = TextEditingController();

  late bool passwordVisibility;
  
  @override
  void initState() {
   
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
              key: _logformKey,
              child: Column(
                children: [
                 kheight100,
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
                        fillColor: Colors.white,
                        
                        suffixIcon: Icon(Icons.email_outlined,color: ambercolor,),
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
                                  : Icons.visibility_off_outlined,color: ambercolor,
                              
                              
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
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          _logformKey.currentState!.validate();
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const HomePage()));
                          showsnackbar(
                               Text('Button Click',style:snackbarmsg ,), Colors.amber);
                        },
                        child: Text(
                          'Sign In',
                          style: signbottontext,
                        )),
                  )
                ],
              )),
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
