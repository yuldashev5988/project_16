import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project_16/views/furnitureView.dart';

class FurnitureInfoScreen extends StatefulWidget {
  static const String id = 'orders_page';

  FurnitureInfoScreen({super.key});

  @override
  State<FurnitureInfoScreen> createState() => _FurnitureInfoScreenState();
}

class _FurnitureInfoScreenState extends State<FurnitureInfoScreen> {
  int page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, FurnitureView.id);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.grey,
              ),
            ),
            centerTitle: true,
            title: Text(
              "Best Furnitures,",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
            ],
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/furniture.png"),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top furniture brand is EuroLux",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "\$489",
                        style: TextStyle(color: Colors.orange, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "4.3",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "(56.4k)",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        "27% Off, \$700",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Color:",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xff2473F2),
                            radius: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.teal,
                            radius: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            radius: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            radius: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Size:",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    left: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    right: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ))),
                            child: Center(
                              child: Text(
                                "S",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    left: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    right: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ))),
                            child: Center(
                              child: Text(
                                "M",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    left: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    right: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ))),
                            child: Center(
                              child: Text(
                                "X",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    left: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ),
                                    right: BorderSide(
                                      color: Colors.orange,
                                      width: 1,
                                    ))),
                            child: Center(
                              child: Text(
                                "XL",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 70,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        page = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 8.0, left: 20, right: 20, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF3F8FE)),
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        page = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 15, right: 15, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF3F8FE)),
                      child: const Text(
                        "Specification",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        page = 3;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 15, right: 15, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF3F8FE)),
                      child: const Text(
                        "Details",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
          ),
          //order page == 1
          if (page == 1)
            SliverToBoxAdapter(
              child: _page1(),
            ),
          // review page ==2
          if (page == 2)
            SliverToBoxAdapter(
              child: _page2(),
            ),
          // information page == 3
          if (page == 3)
            SliverToBoxAdapter(
              child: _page3(),
            ),

        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.4,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    top: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                    left: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                    right: BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                  )),
              child: Center(
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange),
              child: Center(
                child: Text(
                  "BUY NOW",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget _page1() {
    return const Padding(
      padding: EdgeInsets.only(right: 20, left: 20, top: 10),
      child: Column(
        children: [
          Text(
            "Folding tops for your home.They will be suitable for your family members.",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            "Folding tops for your home.They will be suitable for your family members.",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),

        ],
      ),
    );
  }

  Widget _page2() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: const Row(
        children: [
          Image(
            height: 60,
            width: 60,
            image: AssetImage("assets/images/furniture.png"),
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Text("Avesome  Restaurant"),
              SizedBox(
                height: 5,
              ),
              Text("Delivery is frees for you"),
            ],
          )
        ],
      ),
    );
  }

  Widget _page3() {
    return const Text("lsbhvifrgevbi vievievvvnsvieevbevibeievivbv revive ev");
  }
}
/*ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/burgerKing.jpg"),
              fit: BoxFit.cover,
            )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, FoodsPage.id);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Food Order Restaurant",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Icon(
                  IconlyBold.location,
                  color: Colors.grey,
                  size: 17,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "78th Street. 88 W 21th,NY",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Icon(
                  IconlyLight.time_circle,
                  color: Colors.grey,
                  size: 17,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Open  7:00-21:00",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
               const  Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              const   Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              const   Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
               const  Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
               const  Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              const   SizedBox(
                  width: 4,
                ),
                Text(
                  "(${widget.rating}) - 1220 Reviews",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            height: 70,
            padding: EdgeInsets.only(left: 25),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      log(" one pressed");
                      page == 1;
                    });
                  },
                  child: Container(
                    padding:const  EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF3F8FE)
                    ),
                    child: const Text(
                      "Order",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      log(" two pressed");

                      page = 2;
                    });
                  },
                  child: Container(
                    padding:const  EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF3F8FE)
                    ),
                    child: const Text(
                      "Review",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      log(" third pressed");

                      page = 3;
                    });
                  }

                  ,
                  child: Container(
                    padding:const  EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF3F8FE)
                    ),
                    child: const Text(
                      "Information",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
               ],
            ),
          ),
          if(page == 1 )
            _page1(imageUrl1: 'assets/images/pizza.png'),
          if(page == 2 )
            _page2(),
          if(page == 3 )
            _page3(imageUrl3: 'assets/images/burger.png'),
        ],
      )*/
