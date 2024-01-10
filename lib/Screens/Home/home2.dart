
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart_screen.dart';
import '../favourite_screen.dart';
import '../menu_screen.dart';

class Home2Screen extends StatefulWidget {
  const Home2Screen({super.key});

  @override
  State<Home2Screen> createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen> {

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
        body:SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Card(
                      elevation: 0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0), // Border radius
                                child: Image.asset(
                                  'assets/images/shell.jpeg',
                                  height: 158,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text('Shell',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                              Text('20 mins',
                                style: TextStyle(
                                  fontSize: 10,
                                ),)
                            ],
                          );
                        }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 5,); },
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                  child: Row(
                    children: [
                      Text('Order it again',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      Spacer(),
                      Text('See all',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                Row(
                    children: [
                      Container(
                        // height: 100,
                        // width: 130,
                        child: InkWell(
                          onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuScreen(),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 0,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width-24,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        width: 200,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0), // Border radius
                                                  child: Image.asset(
                                                    'assets/images/biryani.jpg',
                                                    height: 100,
                                                    width: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10, // Adjust the left position as needed
                                                  bottom: 10, // Adjust the bottom position as needed
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: Colors.white
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(2.0),
                                                      child: Text(
                                                        '20 min',
                                                        style: TextStyle(
                                                            color: Colors.black, // Adjust text color
                                                            fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Stack(
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 110,
                                                      child: Text(
                                                        'Master Biryani-Gulshan Market',
                                                        overflow: TextOverflow.ellipsis,
                                                        softWrap: false,
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ]
                                              ),
                                              Positioned(
                                                right: 0,
                                                child:Row(
                                                  children: [
                                                    Icon(Icons.star_border_outlined,color: Colors.yellow,
                                                      size: 18,),
                                                    Text('4.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                                    Text('(5000+)',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                                  ],
                                                ), )
                                              ]
                                            ),
                                            Row(
                                              children: [
                                                Text('Biryani, Wraps & Rolls, Pulao'),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'PKR 0 delivery fee',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 12,); },
                                  ),
                                )

                            ),
                          ),
                        ),
                      )
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                  child: Row(
                    children: [
                      Text('Your favourite cuisines',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
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
                                borderRadius: BorderRadius.circular(10.0), // Border radius
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
                      }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 0,); },
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                  child: Row(
                    children: [
                      Text('Recommended for you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      Spacer(),
                      Text('See all',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
                Row(
                    children: [
                      Container(
                        // height: 100,
                        // width: 130,
                        child: InkWell(
                          onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuScreen(),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 0,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width-24,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        width: 200,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0), // Border radius
                                                  child: Image.asset(
                                                    'assets/images/biryani.jpg',
                                                    height: 100,
                                                    width: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10, // Adjust the left position as needed
                                                  bottom: 10, // Adjust the bottom position as needed
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: Colors.white
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(2.0),
                                                      child: Text(
                                                        '20 min',
                                                        style: TextStyle(
                                                            color: Colors.black, // Adjust text color
                                                            fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Stack(
                                                children: [
                                                  Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 110,
                                                          child: Text(
                                                            'Master Biryani-Gulshan Market',
                                                            overflow: TextOverflow.ellipsis,
                                                            softWrap: false,
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    child:Row(
                                                      children: [
                                                        Icon(Icons.star_border_outlined,color: Colors.yellow,
                                                          size: 18,),
                                                        Text('4.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                                        Text('(5000+)',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                                      ],
                                                    ), )
                                                ]
                                            ),
                                            Row(
                                              children: [
                                                Text('Biryani, Wraps & Rolls, Pulao'),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'PKR 0 delivery fee',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 12,); },
                                  ),
                                )

                            ),
                          ),
                        ),
                      )
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                  child: Row(
                    children: [
                      Text('Deals & discounts',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      Spacer(),
                      Text('See all',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
                Row(
                    children: [
                      Container(
                        // height: 100,
                        // width: 130,
                        child: InkWell(
                          onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuScreen(),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 0,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width-24,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        width: 200,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0), // Border radius
                                                  child: Image.asset(
                                                    'assets/images/biryani.jpg',
                                                    height: 100,
                                                    width: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10, // Adjust the left position as needed
                                                  bottom: 10, // Adjust the bottom position as needed
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: Colors.white
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(2.0),
                                                      child: Text(
                                                        '20 min',
                                                        style: TextStyle(
                                                            color: Colors.black, // Adjust text color
                                                            fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Stack(
                                                children: [
                                                  Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 110,
                                                          child: Text(
                                                            'Master Biryani-Gulshan Market',
                                                            overflow: TextOverflow.ellipsis,
                                                            softWrap: false,
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    child:Row(
                                                      children: [
                                                        Icon(Icons.star_border_outlined,color: Colors.yellow,
                                                          size: 18,),
                                                        Text('4.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                                        Text('(5000+)',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                                      ],
                                                    ), )
                                                ]
                                            ),
                                            Row(
                                              children: [
                                                Text('Biryani, Wraps & Rolls, Pulao'),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'PKR 0 delivery fee',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 12,); },
                                  ),
                                )

                            ),
                          ),
                        ),
                      )
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                  child: Row(
                    children: [
                      Text('Panda pick | only on foodpanda',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      Spacer(),
                      Text('See all',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
                Row(
                    children: [
                      Container(
                        // height: 100,
                        // width: 130,
                        child: InkWell(
                          onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuScreen(),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 0,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width-24,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        width: 200,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0), // Border radius
                                                  child: Image.asset(
                                                    'assets/images/biryani.jpg',
                                                    height: 100,
                                                    width: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10, // Adjust the left position as needed
                                                  bottom: 10, // Adjust the bottom position as needed
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: Colors.white
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(2.0),
                                                      child: Text(
                                                        '20 min',
                                                        style: TextStyle(
                                                            color: Colors.black, // Adjust text color
                                                            fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Stack(
                                                children: [
                                                  Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 110,
                                                          child: Text(
                                                            'Master Biryani-Gulshan Market',
                                                            overflow: TextOverflow.ellipsis,
                                                            softWrap: false,
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    child:Row(
                                                      children: [
                                                        Icon(Icons.star_border_outlined,color: Colors.yellow,
                                                          size: 18,),
                                                        Text('4.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                                        Text('(5000+)',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                                      ],
                                                    ), )
                                                ]
                                            ),
                                            Row(
                                              children: [
                                                Text('Biryani, Wraps & Rolls, Pulao'),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'PKR 0 delivery fee',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 12,); },
                                  ),
                                )

                            ),
                          ),
                        ),
                      )
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                  child: Row(
                    children: [
                      Text('Home chef - khas ghr se',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      Spacer(),
                      Text('See all',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
                Row(
                    children: [
                      Container(
                        // height: 100,
                        // width: 130,
                        child: InkWell(
                          onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuScreen(),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 0,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width-24,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        width: 200,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0), // Border radius
                                                  child: Image.asset(
                                                    'assets/images/biryani.jpg',
                                                    height: 100,
                                                    width: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10, // Adjust the left position as needed
                                                  bottom: 10, // Adjust the bottom position as needed
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: Colors.white
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(2.0),
                                                      child: Text(
                                                        '20 min',
                                                        style: TextStyle(
                                                            color: Colors.black, // Adjust text color
                                                            fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Stack(
                                                children: [
                                                  Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 110,
                                                          child: Text(
                                                            'Master Biryani-Gulshan Market',
                                                            overflow: TextOverflow.ellipsis,
                                                            softWrap: false,
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    child:Row(
                                                      children: [
                                                        Icon(Icons.star_border_outlined,color: Colors.yellow,
                                                          size: 18,),
                                                        Text('4.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                                        Text('(5000+)',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                                      ],
                                                    ), )
                                                ]
                                            ),
                                            Row(
                                              children: [
                                                Text('Biryani, Wraps & Rolls, Pulao'),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'PKR 0 delivery fee',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 12,); },
                                  ),
                                )

                            ),
                          ),
                        ),
                      )
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                  child: Row(
                    children: [
                      Text('Hi-Tea deals & discounts',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      Spacer(),
                      Text('See all',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
                Row(
                    children: [
                      Container(
                        // height: 100,
                        // width: 130,
                        child: InkWell(
                          onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuScreen(),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 0,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width-24,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        width: 200,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0), // Border radius
                                                  child: Image.asset(
                                                    'assets/images/biryani.jpg',
                                                    height: 100,
                                                    width: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10, // Adjust the left position as needed
                                                  bottom: 10, // Adjust the bottom position as needed
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: Colors.white
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(2.0),
                                                      child: Text(
                                                        '20 min',
                                                        style: TextStyle(
                                                            color: Colors.black, // Adjust text color
                                                            fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Stack(
                                                children: [
                                                  Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 110,
                                                          child: Text(
                                                            'Master Biryani-Gulshan Market',
                                                            overflow: TextOverflow.ellipsis,
                                                            softWrap: false,
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    child:Row(
                                                      children: [
                                                        Icon(Icons.star_border_outlined,color: Colors.yellow,
                                                          size: 18,),
                                                        Text('4.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                                        Text('(5000+)',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                                      ],
                                                    ), )
                                                ]
                                            ),
                                            Row(
                                              children: [
                                                Text('Biryani, Wraps & Rolls, Pulao'),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'PKR 0 delivery fee',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 12,); },
                                  ),
                                )

                            ),
                          ),
                        ),
                      )
                    ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 330,
                      child: Card(
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
                  padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                  child: Row(
                    children: [
                      Text('All Resturants',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),

                    ],
                  ),
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
                                width: MediaQuery.of(context).size.width, // Width and height are the same to make it a perfect circle
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Border radius
                                      child: Image.asset(
                                        'assets/images/biryani.jpg',
                                        height: 150,
                                        width: MediaQuery.of(context).size.width,
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
                        );
                      },  separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10,);  },
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}