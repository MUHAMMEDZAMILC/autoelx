import 'package:flutter/material.dart';
class SalesVechicleViewPage extends StatefulWidget {
  const SalesVechicleViewPage({super.key});

  @override
  State<SalesVechicleViewPage> createState() => _SalesVechicleViewPageState();
}

class _SalesVechicleViewPageState extends State<SalesVechicleViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title:const Text('Order') ,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}