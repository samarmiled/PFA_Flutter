import 'package:application/src/colors/color.dart';
import 'package:application/src/features/presentation/favourite_page/View/favourite_page.dart';
import 'package:application/src/features/presentation/order_page/View/empty.dart';
import 'package:application/src/features/presentation/order_page/View/order_page.dart';
import 'package:application/src/features/presentation/profile_page/View/profile_page.dart';
import 'package:application/src/features/presentation/widgets/bottombar_item.dart';
import 'package:application/utils/constant.dart';
import 'package:flutter/material.dart';

import 'home_page/View/home.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> with TickerProviderStateMixin {
  int activeTabIndex = 1;
  List barItems = [
    {
      "icon": "assets/icons/cart.svg",
      "page": EmptyOrder(),
    },
    {
      "icon": "assets/icons/home.svg",
      "page": const HomePage(),
    },
    {
      "icon": "assets/icons/bookmark.svg",
      "page": FavouritePage(),
    },
    {
      "icon": "assets/icons/profile.svg",
      "page": ProfilePage(),
    },
  ];

//====== set animation=====
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: animatedBodyMS),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  animatedPage(page) {
    return FadeTransition(child: page, opacity: _animation);
  }

  void onPageChanged(int index) {
    if (index == activeTabIndex) return;
    _controller.reset();
    setState(() {
      activeTabIndex = index;
    });
    _controller.forward();
  }

//====== end set animation=====

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      bottomNavigationBar: buildBottomBar(),
      body: buildBottomBarPage(),
    );
  }

  Widget buildBottomBarPage() {
    return IndexedStack(
        index: activeTabIndex,
        children: List.generate(
            barItems.length, (index) => animatedPage(barItems[index]["page"])));
  }

  Widget buildBottomBar() {
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
          color: bottomBarColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              blurRadius: 1,
              spreadRadius: 1,
              offset: const Offset(0, 1),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 45,
          right: 45,
          bottom: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            barItems.length,
            (index) => BottomBarItem(
              barItems[index]["icon"],
              isActive: activeTabIndex == index,
              activeColor: primary,
              onTap: () {
                onPageChanged(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
