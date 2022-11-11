import 'package:autoelx/common/colors.dart';
import 'package:autoelx/home/bikes/bike_list_page.dart';
import 'package:autoelx/home/cars/cars_list_page.dart';
import 'package:autoelx/home/cart/cart_list_page.dart';
import 'package:autoelx/home/category/category_list_page.dart';
import 'package:autoelx/home/scooter/scooter_list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0; 
   _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  List _homebottompages = [CarListPage(),BikeListPage(),ScooterListPage(),CatergoryListPage(),CartListPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('AutoELX'),
        
      ),
      body: _homebottompages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        selectedItemColor: blackcolor,
        selectedIconTheme: IconThemeData(
          size: 28
        ),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon:_selectedIndex == 0 ? const Icon(Icons.directions_car_filled_sharp) : const Icon(Icons.directions_car_outlined),label: 'cars'),
        BottomNavigationBarItem(icon: _selectedIndex == 1 ? const Icon(Icons.two_wheeler_sharp): const Icon(Icons.two_wheeler_sharp),label: 'bikes'),
        BottomNavigationBarItem(icon: _selectedIndex == 2 ? const Icon(Icons.bike_scooter_sharp) : const Icon(Icons.bike_scooter_outlined),label: 'Scooter'),
        BottomNavigationBarItem(icon: _selectedIndex == 3 ?const Icon( Icons.category_sharp ): const Icon(Icons.category_outlined),label: 'Accessories'),
        BottomNavigationBarItem(icon: _selectedIndex == 4 ?const Icon(Icons.shopping_cart_sharp): const Icon(Icons.shopping_cart_outlined),label: 'Cart'),
      ]),
    );
  }
}