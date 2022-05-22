import 'package:application/src/colors/color.dart';
import 'package:application/src/features/presentation/order_page/View/components/empty_view.dart';
import 'package:flutter/material.dart';
class EmptyOrder extends StatefulWidget {
  EmptyOrder({Key? key}) : super(key: key);

  @override
  State<EmptyOrder> createState() => _EmptyOrderState();
}

class _EmptyOrderState extends State<EmptyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPgae,
      body: EmptyView(),
    );
  }
}