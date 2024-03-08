import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //backgroundColor: widget.backgroundColor,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: StretchingOverscrollIndicator(
        axisDirection: AxisDirection.down,
        child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          Text("Dubia airport")
        ],),

        ),
      )),
    );
  }
}
