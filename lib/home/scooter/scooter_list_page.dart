import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/decorations.dart';
import 'package:autoelx/common/sizedbox.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:autoelx/home/scooter/rent_scooter_list.dart';
import 'package:autoelx/home/scooter/sales_scooter_list.dart';
import 'package:flutter/material.dart';

class ScooterListPage extends StatelessWidget {
  const ScooterListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: double.infinity,
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: [
            Container(
              decoration: amberbackground,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TabBar(
                  overlayColor: MaterialStateProperty.all(ambercolor),
                  labelColor: redcolor,
                  unselectedLabelColor: blackcolor,
                  labelStyle:tabbartext,
                  indicatorColor: redcolor,
                  indicatorWeight: 5,
                  tabs: const [
                  Tab(
                              text: 'Sales',
                              
                            ),
                            Tab(
                              text: 'Rent',
                            ),
                ]),
              ),
            ),
            
             const Expanded(
              child: TabBarView(children: [
                
                SalesScooterList(),RentScooterList()
              ]),
            )
          ],
        ),
      ),
    );
  }
}