import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/core/app_color.dart';
import 'package:grocery_app/pages/account_page.dart';
import 'package:grocery_app/pages/cart_page.dart';
import 'package:grocery_app/pages/explore_page.dart';
import 'package:grocery_app/pages/favorite_page.dart';
import 'package:grocery_app/pages/home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    ExplorePage(),
    CartPage(),
    FavoritePage(),
    AccountPage(),
  ]; // Can be filled with pages
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            // fix type button
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            currentIndex: currentIndex,
            selectedItemColor: AppColor.PrimaryColor,
            selectedLabelStyle: TextStyle(
              color: AppColor.PrimaryColor,
              fontWeight: FontWeight.w600,
            ),
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            items: [
              BottomNavigationBarItem(
                label: 'Shop',
                icon: SvgPicture.asset(
                    color: currentIndex == 0
                        ? AppColor.PrimaryColor
                        : Colors.black,
                    'assets/icons/shop_icon.svg'),
              ),
              BottomNavigationBarItem(
                label: 'Explore',
                icon: SvgPicture.asset(
                    color: currentIndex == 1
                        ? AppColor.PrimaryColor
                        : Colors.black,
                    'assets/icons/explore_icon.svg'),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: SvgPicture.asset(
                    color: currentIndex == 2
                        ? AppColor.PrimaryColor
                        : Colors.black,
                    'assets/icons/cart_icon.svg'),
              ),
              BottomNavigationBarItem(
                label: 'Favorite',
                icon: SvgPicture.asset(
                    color: currentIndex == 3
                        ? AppColor.PrimaryColor
                        : Colors.black,
                    'assets/icons/favorite_icon.svg'),
              ),
              BottomNavigationBarItem(
                label: 'Account',
                icon: SvgPicture.asset(
                    color: currentIndex == 4
                        ? AppColor.PrimaryColor
                        : Colors.black,
                    'assets/icons/account_icon.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
