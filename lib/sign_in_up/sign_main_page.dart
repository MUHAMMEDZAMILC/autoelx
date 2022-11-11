import 'package:autoelx/common/decorations.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:autoelx/sign_in_up/sign_in_page.dart';
import 'package:autoelx/sign_in_up/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SignMainPage extends StatelessWidget {
  const SignMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration:scoffoldd,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 90, 20, 0),
          child: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(

              children: [
                kheight20,
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TabBar(
                    
                    labelColor: Colors.amber,
                    unselectedLabelColor: Colors.white,
                    labelStyle:appbartitle,
                    indicatorColor: Colors.amber,
                    indicatorWeight: 5,
                    tabs: const[
                      Tab(
                        text: 'Sign In',
                        
                      ),
                      Tab(
                        text: 'Sign Up',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      SignInPage(),
                      SignUpPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}