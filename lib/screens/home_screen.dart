import 'package:flutter/material.dart';
import 'package:project_16/pages/drawer_page.dart';
import 'package:project_16/views/electronicsView.dart';
import 'package:project_16/views/furnitureView.dart';
import 'package:project_16/views/phonesView.dart';
import 'package:project_16/views/watchesView.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../views/infoScreens/manInfoScreen.dart';
import '../views/laptopView.dart';
import '../views/menView.dart';
import '../widgets/likeWidget.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<HomeScreen> {
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
        title: const Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.sunny,
                  color: Colors.white,
                ),
                Text(
                  "SHOPPIR",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Express Shopping",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.qr_code_scanner,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20), //
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.webp",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.webp",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.webp",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.webp",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 4,
                      effect: WormEffect(
                          dotHeight: 14,
                          dotWidth: 14,
                          type: WormType.thinUnderground),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const  Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          const   SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){Navigator.pushReplacementNamed(context, MenView.id);},
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            // Shadow color
                            spreadRadius: 3,
                            // Spread radius
                            blurRadius: 6,
                            // Blur radius
                            offset:
                            Offset(0, 3), // Offset to control shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/man_image.png"),
                            ),
                          ),
                          const   Text(
                            "Man",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.5),
                          // Shadow color
                          spreadRadius: 3,
                          // Spread radius
                          blurRadius: 6,
                          // Blur radius
                          offset:
                          Offset(0, 3), // Offset to control shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          child: Image(
                            image: AssetImage("assets/images/woman_dress.png"),
                          ),
                        ),
                        Text(
                          "Woman",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.5),
                          // Shadow color
                          spreadRadius: 3,
                          // Spread radius
                          blurRadius: 6,
                          // Blur radius
                          offset:
                          Offset(0, 3), // Offset to control shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          child: Image(
                            image: AssetImage("assets/images/shoes.png"),
                          ),
                        ),
                        Text(
                          "Shoes",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.5),
                          // Shadow color
                          spreadRadius: 3,
                          // Spread radius
                          blurRadius: 6,
                          // Blur radius
                          offset:
                          Offset(0, 3), // Offset to control shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          child: Image(
                            image: AssetImage("assets/images/toys.png"),
                          ),
                        ),
                        Text(
                          "Toys",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.5),
                          // Shadow color
                          spreadRadius: 3,
                          // Spread radius
                          blurRadius: 6,
                          // Blur radius
                          offset:
                          Offset(0, 3), // Offset to control shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          child: Image(
                            image: AssetImage("assets/images/caps.png"),
                          ),
                        ),
                        Text(
                          "Caps",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, ElectronicsView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            // Shadow color
                            spreadRadius: 3,
                            // Spread radius
                            blurRadius: 6,
                            // Blur radius
                            offset:
                            Offset(0, 3), // Offset to control shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/electronics.png"),
                              fit: BoxFit.cover,

                            ),
                          ),
                          const Text(
                            "Electronics",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, FurnitureView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            // Shadow color
                            spreadRadius: 3,
                            // Spread radius
                            blurRadius: 6,
                            // Blur radius
                            offset:
                            Offset(0, 3), // Offset to control shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/furniture.png"),
                              fit: BoxFit.cover,

                            ),
                          ),
                          const  Text(
                            "Furniture",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, PhonesView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            // Shadow color
                            spreadRadius: 3,
                            // Spread radius
                            blurRadius: 6,
                            // Blur radius
                            offset:
                            Offset(0, 3), // Offset to control shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/phones.png"),
                              fit: BoxFit.cover,

                            ),
                          ),
                          const  Text(
                            "Phones",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, LaptopView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            // Shadow color
                            spreadRadius: 3,
                            // Spread radius
                            blurRadius: 6,
                            // Blur radius
                            offset:
                            Offset(0, 3), // Offset to control shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/laptop.png"),
                              fit: BoxFit.cover,

                            ),
                          ),
                          const  Text(
                            "Laptop",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, WatchesView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            // Shadow color
                            spreadRadius: 3,
                            // Spread radius
                            blurRadius: 6,
                            // Blur radius
                            offset:
                            Offset(0, 3), // Offset to control shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child: const Image(
                              image: AssetImage("assets/images/watches.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Text(
                            "Watches",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child:const  Text(
                    "See all",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            Row(
              children: [
                LikeWidget(imageUrl: "assets/images/shoes.png", imageUrl2: "assets/images/toys.png"),
                LikeWidget(imageUrl: "assets/images/shoes.png", imageUrl2: "assets/images/toys.png"),

              ],
            ),


          )

        ],
      ),
    );
  }
}
/*body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3012,
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                      left: 10,
                      right: 15,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Builder(
                              builder: (BuildContext context) {
                                return IconButton(
                                  onPressed: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  icon: const Icon(
                                    Icons.menu,
                                    size: 28,
                                    color: Colors.white,
                                  ),
                                );
                              },
                            ),
                            const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.sunny,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "SHOPPIR",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "    Express Shopping",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            const Expanded(child: SizedBox()),
                            const Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 26,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 280,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: const Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Search",
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.grey,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            Container(
                              height: 44,
                              width: 42,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.qr_code_scanner_outlined,
                                  color: Colors.yellow.shade900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * (1 - 0.372),
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/watches_image1.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 25),
                  child: Row(
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Expanded(child: SizedBox()),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(color: Colors.grey),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 40,
                                width: 35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/woman_dress.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "Woman",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 40,
                                width: 35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/man_image.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "Man",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 40,
                                width: 35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/shoes.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "Shoes",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                width: 35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/toys.png"),
                                  ),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "Toys",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 40,
                                width: 35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/electronics.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "Electronics",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 40,
                                width: 35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/furniture.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "Furniture",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 40,
                                width: 35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/phones.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "Phones",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 40,
                                width: 35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/laptop.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "Laptop",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300.withOpacity(0.3),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushReplacementNamed(context, WatchesView.id);
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height: 40,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/watches.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(
                                  "Watches",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 25),
                  child: Row(
                    children: [
                      Text(
                        "Most Popular",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Expanded(child: SizedBox()),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(color: Colors.grey),
                          ),),

                    ],
                  ),
                ),
                LikeWidget(imageUrl: "assets/images/shoes.png", imageUrl2: "assets/images/toys.png"),
                LikeWidget(imageUrl: "assets/images/shoes.png", imageUrl2: "assets/images/toys.png"),
                ],
            ),
          )
        ],
      ),
      */
