
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart_screen.dart';
import '../favourite_screen.dart';
import '../menu_screen.dart';

class Home5Screen extends StatefulWidget {
  const Home5Screen({super.key});

  @override
  State<Home5Screen> createState() => _Home5ScreenState();
}

class _Home5ScreenState extends State<Home5Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp),
            color: Colors.pink,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 13),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Home',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,),),
                    Text('Multan',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 10,
                      ),),
                  ],
                ),
              ),
              Spacer(),
              InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavouriteScreen(),
                      ),
                    );
                  },
                  child: Icon(Icons.favorite_border_sharp,
                    color: Colors.pink,)),
              SizedBox(width: 10,),
              InkWell(
                  onTap:  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.pink,)
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        // color: Colors.pinkAccent,
                        height: 35,
                        width: 270,
                        margin: EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(9),
                            hintText: 'Search for shops & resturant',
                            border: InputBorder.none,
                            prefixIcon: Icon(CupertinoIcons.search,
                              color: Colors.black12.withOpacity(0.4),),
                            hintStyle: TextStyle(
                              color: Colors.black12.withOpacity(0.4),
                              fontSize: 16,
                              // textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.filter_alt_outlined,color: Colors.pink,),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Card(
                    elevation: 0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Border radius
                              child: Image.asset(
                                'assets/images/shell.jpeg',
                                height: 158,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 5,
                        );
                      },
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: Stack(
                    children: [
                      Image.asset('assets/images/map.png',
                      height: 220,
                      width: 340,
                      fit: BoxFit.fill,),
                      Positioned(
                        bottom: 0,
                          child: Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Explore resturants',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                        Text('around you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 55,),
                                Container(
                                  child: ElevatedButton(
                                    child: Text(
                                      'Show Map',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.pink,
                                        // side:
                                        // BorderSide(width: 0.1, color: Colors.black),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        textStyle: TextStyle(
                                          fontSize: 10,
                                          // fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 8, top: 8, bottom: 0, left: 15),
                  child: Row(
                    children: [
                      Text(
                        'Your favourite cuisines',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 135,
                  child: Card(
                    elevation: 0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Border radius
                                child: Image.asset(
                                  'assets/images/grocery.jpg',
                                  height: 90,
                                  width: 90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text('Store')
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 0,
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 330,
                      color: Colors.white,
                      child: Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.4,
                                child: Image.asset('assets/images/pro.png',
                                  height: 70,
                                  width: 80,),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.5-18,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Text('Refer friends and get',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),),
                                    Text('Rs. 350.00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),),
                                    SizedBox(height: 10,),
                                    Center(
                                      child: ElevatedButton(
                                        child: Text(
                                          'Find out how',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.pink,
                                            // side:
                                            // BorderSide(width: 0.1, color: Colors.black),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            textStyle: TextStyle(
                                              fontSize: 10,
                                              // fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 8, top: 8, bottom: 0, left: 15),
                  child: Row(
                    children: [
                      Text(
                        'All Resturants',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                      // scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: MediaQuery.of(context)
                                    .size
                                    .width, // Width and height are the same to make it a perfect circle
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Border radius
                                      child: Image.asset(
                                        'assets/images/biryani.jpg',
                                        height: 150,
                                        width:
                                        MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left:
                                      10, // Adjust the left position as needed
                                      bottom:
                                      10, // Adjust the bottom position as needed
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            '20 min',
                                            style: TextStyle(
                                                color: Colors
                                                    .black, // Adjust text color
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
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Text(
                                    '4.0',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    '(5000+)',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
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
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}