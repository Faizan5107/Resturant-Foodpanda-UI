import 'dart:math';

import 'package:flutter/material.dart';

import 'menu_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp),
            color: Colors.pink,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Favourite",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.shopping_bag_outlined,
                  color: Colors.pink,)
                ],
              ),
            ),
          ],
          backgroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Colors.pink,
            tabs: [
              Tab(
                child: Text(
                  'Resturants',
                  style: TextStyle(color: Colors.pink),
                ),
              ),
              Tab(
                child: Text(
                  'Shops',
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            child: Text(
                              'Delivery',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.pink,
                                side:
                                BorderSide(width: 0.1, color: Colors.black),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            child: Text(
                              'Pick-up',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side:
                                    BorderSide(width: 0.1, color: Colors.black),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap:  () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuScreen(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width -
                                  30, // Width and height are the same to make it a perfect circle
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Border radius
                                    child: Image.asset(
                                      'assets/images/biryani.jpg',
                                      height: 150,
                                      width: MediaQuery.of(context).size.width - 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    left: 10, // Adjust the left position as needed
                                    bottom:
                                        10, // Adjust the bottom position as needed
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text(
                                          '20 min',
                                          style: TextStyle(
                                              color:
                                                  Colors.black, // Adjust text color
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Master Biryani-Gulshan Market',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.star_border_outlined,color: Colors.yellow,
                                size: 18,),
                                Text('4.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                Text('(5000+)',style: TextStyle(color: Colors.grey,fontSize: 12),),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Biryani, Wraps & Rolls, Pulao',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'PKR 0 delivery fee',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),
            ),
            Center(
              child: Text("Shops"),
            ),
          ],
        ),
      ),
    );
  }
}
