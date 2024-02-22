// import 'package:flutter/material.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
// import 'package:project_16/pages/intro_page/indroduction_page.dart';
//
// class MyLiquidSwipe extends StatelessWidget {
//
//   MyLiquidSwipe({super.key});
//   static const String id="liquid_swipe";
//
//   final List<Widget> pages = [
//     IntroPage(
//         title1: "Explore Best Products",
//         title2: "Browse 2 mln+ products and find your desire product.",
//         currentindex: 1, image: '',
//         ),
//     IntroPage(
//         title1: "Marketing App 222",
//         title2: "Follow us",
//         currentindex: 2,
//         image: "assets/images/market2.png"),
//     IntroPage(
//         title1: "With Yuldoshev Jahongir",
//         title2: "Follow us",
//         currentindex: 3,
//         image: "assets/images/market1.png"),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LiquidSwipe(
//         pages: pages,
//         initialPage: 0,
//         onPageChangeCallback: (int pageIndex) {},
//         slideIconWidget: const Icon(
//           Icons.arrow_back_ios_new,
//           size: 30,
//         ),
//         positionSlideIcon: 0.7,
//         waveType: WaveType.liquidReveal,
//         enableLoop: false,
//         enableSideReveal: true,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class InroScreen extends StatelessWidget {
  String myTitle;
  String myContext;
  String imagePath;

  InroScreen({
    Key? key,
    required this.myTitle,
    required this.myContext,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Image(
            height: 150,
            width: 150,
            image: AssetImage(imagePath),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            myTitle,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            myContext,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
