import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shoes_ui/personal.dart';

import 'favorite.dart';
import 'home_page.dart';
import 'library.dart';
import 'message.dart';


class BottomNavBar extends StatefulWidget {
  static const String id = "bottom_nav_bar";

  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcf0f9),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              HomePage(),
              Message(),
              FavoritePage(),
              LibraryPage(),
              PersonalPage(),
            ],
            onPageChanged: (int index) {
              setState(
                    () {
                  currentIndex = index;
                },
              );
            },
          ),


        ],
      ),
      // floatingActionButton: navBar(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: navBar(),
    );
  }

  /// bottom navigation bar widget
  Widget navBar() {
    Size Get = MediaQuery
        .of(context)
        .size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 10,
          sigmaX: 10,
        ),
        child: Container(
          height: Get.height * 0.1,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(0);
                    currentIndex = 0;
                  });
                },
                icon: Icon(
                  currentIndex == 0 ? IconlyBold.home : IconlyLight.home,
                  color: currentIndex == 0 ? Color(0xff64c6c6) : Colors.grey,
                  size: currentIndex == 0 ? 30 : 28,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(1);
                    currentIndex = 1;
                  });
                },
                icon: Icon(
                  currentIndex == 1 ? IconlyBold.chat : IconlyLight.chat,
                  color: currentIndex == 1 ? Color(0xff64c6c6) : Colors.grey,
                  size: currentIndex == 1 ? 30 : 28,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(2);
                    currentIndex = 2;
                  });
                },
                icon: Icon(
                  currentIndex == 2
                      ? IconlyBold.heart
                      : IconlyLight.heart,
                  color: currentIndex == 2 ? Color(0xff64c6c6) : Colors.grey,
                  size: currentIndex == 2 ? 30 : 28,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(3);
                    currentIndex = 3;
                  });
                },
                icon: Icon(
                  currentIndex == 3 ? IconlyBold.message : IconlyLight.message,
                  color: currentIndex == 3 ? Color(0xff64c6c6) : Colors.grey,
                  size: currentIndex == 3 ? 30 : 28,
                ),),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(4);
                    currentIndex = 4;
                  });
                },
                icon: Icon(
                  currentIndex == 4 ? IconlyBold.profile : IconlyLight.profile,
                  color: currentIndex == 4 ? Color(0xff64c6c6) : Colors.grey,
                  size: currentIndex == 4 ? 30 : 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

