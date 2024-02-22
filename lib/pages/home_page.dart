import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project_16/screens/home_screen.dart';
import 'package:project_16/screens/message_screen.dart';
import 'package:project_16/screens/profile_screen.dart';
import 'package:project_16/screens/search_screen.dart';
import 'package:project_16/screens/shop_screen.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: PageView(
            controller: pageController,
            children:  [
              HomeScreen(),
              MessageScreen(),
              SearchScreen(),
              ShopScreen(),
              ProfileScreen(),
            ],
            onPageChanged: (int index) {
              setState(
                    () {
                  selectedIndex = index;
                },
              );
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (int index) {
              setState(
                    () {
                  selectedIndex = index;
                  pageController.animateToPage(index,
                      duration: const Duration(
                        microseconds: 200,
                      ),
                      curve: Curves.bounceOut);
                },
              );
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.home,),
                label: "Home",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.message,),
                label: "Messages",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.search,),
                label: "Search",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.buy,),
                label: "Cart",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                label: "Profile",
                backgroundColor: Colors.white,
              ),
            ],
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
          )),
    );
  }
}
