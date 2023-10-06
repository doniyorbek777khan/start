import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body:ListView(
          scrollDirection: Axis.vertical,
          children:[

            _Itemlist(image: "assets/img.png",title: "Pubg Mobile",price: "\$10000"),
            _Itemlist(image: "assets/img.png",title: "Pubg Mobile",price:  "\$10000"),
            _Itemlist(image: "assets/img.png",title:"Pubg Mobile",price:  "\$10000"),
            _Itemlist(image: "assets/img.png",title: "Pubg Mobile",price:  "\$10000"),
            _Itemlist(image: "assets/img.png",title: "Pubg Mobile",price: "\$10000"),
            _Itemlist(image: "assets/img.png",title: "SaidAzim",price: "\$1000"),
            _Itemlist(image: "assets/img.png",title: "Free Fire",price: "\$00.1.Tekin")
          ],
        )


    );
  }

  Widget _Itemlist({image, title,price}){
    return Container(

      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Row(
           children: [
             Container(
               height: 70,
               width: 70,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                   image: DecorationImage(
                       image: AssetImage(image),
                       fit: BoxFit.cover
                   )
               ),
             ),
             SizedBox(width: 20,),
             Text(title)
           ],
         ),

          Text(price)
        ],
      ),
    );
  }
}