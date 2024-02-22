import 'package:flutter/material.dart';
import 'package:project_16/views/phonesView.dart';
class PhonesInfoScreen extends StatefulWidget {
  static const String id="phone_screen";
  const PhonesInfoScreen({super.key});

  @override
  State<PhonesInfoScreen> createState() => _PhonesInfoScreenState();
}

class _PhonesInfoScreenState extends State<PhonesInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey.shade400,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context,PhonesView .id);
          },
        ),
        centerTitle: true,
        title: Text(
          "Phones",
          style: TextStyle(color: Colors.grey.shade500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.grey.shade500,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/phones.png"),
                ),
              ),
            ),
            Row(children: [
              Text("Samsung Top"),
              Expanded(child: SizedBox()),
              Text("\$1099.99",style: TextStyle(color: Colors.orange.shade600),),
            ],),
            Row(children: [
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Icon(Icons.star,color: Colors.yellow,size: 18,),
              Text("4.9",style: TextStyle(color: Colors.grey.shade500),),
              Text("(120.2M)",style: TextStyle(color: Colors.grey.shade500),),
              Expanded(child: SizedBox()),
              Text("-12% Off (\$1299.99)",style: TextStyle(color: Colors.grey.shade400),)
            ],),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Color:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                CircleAvatar(backgroundColor: Colors.grey,radius: 12,),
                CircleAvatar(backgroundColor: Colors.black,radius: 12,),

                CircleAvatar(backgroundColor: Colors.red,radius: 12,),
                CircleAvatar(backgroundColor: Colors.pink,radius: 12,),
                CircleAvatar(backgroundColor: Colors.teal,radius: 12,),



              ],
            ),
            SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Size:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange,width: 1.0),
                  ),
                  child: Center(
                    child: Text(
                      "S",style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange,width: 1.0),
                  ),
                  child: Center(
                    child: Text(
                      "M",style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange,width: 1.0),
                  ),
                  child: Center(
                    child: Text(
                      "L",style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange,width: 1.0),
                  ),
                  child: Center(
                    child: Text(
                      "XL",style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                TextButton(onPressed: (){}, child:Text("Chart",style: TextStyle(color: Colors.blue,
                ),),),


              ],
            ),
          ],
        ),
      ),


    );
  }
}
