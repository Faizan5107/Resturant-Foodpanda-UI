
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/Screens/Home/Home_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.multiply, color: Colors.pink),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          title: Text('Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
        body:SafeArea(
    child: Column(
        children: [
          SizedBox(height: 180,),
          Image.asset('assets/images/card.png',
          height: 180,
          width: 180,),
          SizedBox(height: 10,),
          Text('Hungry?',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    ),),
          SizedBox(height: 10,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('You have not added anything to your cart!'),
    ],
    ),
          SizedBox(height: 10,),
          ElevatedButton(
            child: Text(
              'Browse',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                // side:
                // BorderSide(width: 0.1, color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textStyle: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                )),
          ),
    ],
        ),
    )
    );
  }
}