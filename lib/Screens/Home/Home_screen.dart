

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:resturant/Screens/Profile.dart';
import 'package:resturant/Screens/address.dart';
import 'package:resturant/Screens/buisness.dart';
import 'package:resturant/Screens/cart_screen.dart';
import 'package:resturant/Screens/favourite_screen.dart';
import 'package:resturant/Screens/Home/home2.dart';
import 'package:resturant/Screens/Home/home4.dart';
import 'package:resturant/Screens/Home/home5.dart';
import 'package:resturant/Screens/help.dart';
import 'package:resturant/Screens/invite.dart';
import 'package:resturant/Screens/order.dart';
import 'package:resturant/Screens/settings.dart';
import 'package:resturant/Screens/Options/voucher.dart';

import '../../Helper/confid.dart';
import 'home3.dart';
import '../menu_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SliderDrawer(
          appBar: SliderAppBar(
            appBarHeight: 80,
            appBarColor: Color(0xFFE91E63),
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
                            color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),),
                      Text('Multan',
                        style: TextStyle(
                          color: Colors.white,
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
                      color: Colors.white,)),
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
                      color: Colors.white,)
                ),
              ],
            ),
            drawerIconColor: Color(0xFFFFFFFF),
          ),
          slider: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: Colors.pink,
                  height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        SizedBox(height: 100,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(148.0),
                            child: Image.asset('assets/images/dummy.jpg',
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,),),
                        Spacer(),

                        Text('Faizan Malik',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                      ]
                  ),
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Credit and payment methods',
                          style: TextStyle(
                            fontSize: 14,
                          ),),
                        Spacer(),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius:
                                BorderRadius
                                    .circular(40)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text('Rs. 0.00',
                                style: TextStyle(color: Colors.pink,
                                    fontWeight: FontWeight.bold,
                                fontSize: 10),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      leading: Icon(Icons.pages_rounded,color: Colors.pink,),
                      title: Text('Become a pandapro',
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VoucherScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(Icons.local_offer_outlined,color: Colors.pink,),
                      title: Text('Vouchers & offers',
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavouriteScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(Icons.favorite_border_sharp,color: Colors.pink,),
                      title: Text('Favourite',
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(Icons.receipt,color: Colors.pink,),
                      title: Text('Orders & recording',
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.pink,),
                      title: Text('View Profile',
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddressScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(Icons.place_outlined,color: Colors.pink,),
                      title: Text('Addresses',
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.card_giftcard_sharp,color: Colors.pink,),
                    title: Text('panda rewards',
                      style: TextStyle(
                        fontSize: 14,
                      ),),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HelpCenterScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(Icons.help_outline_sharp,color: Colors.pink,),
                      title: Text('Help center',
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BuisnessScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(CupertinoIcons.building_2_fill,color: Colors.pink,),
                      title: Text('foodpanda for business',
                        style: TextStyle(
                          fontSize: 14,
                        ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InviteScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(CupertinoIcons.gift,color: Colors.pink,),
                      title: Text('Invite friends',
                      style: TextStyle(
                        fontSize: 14,
                      ),),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingScreen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text('Settings',
                            style: TextStyle(
                              fontSize: 14,
                            ),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Terms & Condition',
                          style: TextStyle(
                            fontSize: 14,
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Log out',
                          style: TextStyle(
                            fontSize: 14,
                          ),),
                      ],
                    ),
                  ),
              ],
              ),
            ),
          ),
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 70,
                    color: primaryBgColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          //Search
                          Container(
                            // color: Colors.pinkAccent,
                            height: 35,
                            width: 310,
                            margin: EdgeInsets.symmetric(horizontal: 16.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(9),
                                hintText: 'Search for shops & resturant',
                                border: InputBorder.none,
                                prefixIcon: Icon(CupertinoIcons.search,
                                color: Colors.grey,),
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400
                                  // textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // height: 350,
                    color: Colors.grey.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(height: 25,),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                      Container(
                                        height: 250,
                                         width: MediaQuery.of(context).size.width*0.5,
                                         // color: Colors.white,
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Home2Screen(),
                                              ),
                                            );
                                          },
                                          child: Card(
                                            color: Colors.white,
                                          surfaceTintColor: Colors.white,
                                          child: Padding(padding: EdgeInsets.all(16.0),
                                          child: Stack(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Food Delivery',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18
                                                    ),
                                                  ),
                                                  Text(
                                                    'Order food you love',
                                                    style: TextStyle(
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                top: 120,
                                                bottom: 0,
                                                right: 0,
                                                child: Image.asset('assets/images/card.png',height: 150,width: 100,),)

                                            ],
                                          ),
                                    ),
                                  ),
                                        ),
                                      ),
                                      Container(
                                    height: 90,
                                        width: MediaQuery.of(context).size.width*0.5,
                                    // color: Colors.white,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home3Screen(),
                                          ),
                                        );
                                      },
                                      child: Card(
                                        color: Colors.white,
                                        surfaceTintColor: Colors.white,
                                        child: Padding(padding: EdgeInsets.all(16.0),
                                          child: Stack(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Dine-in',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15
                                                    ),
                                                  ),
                                                  Text(
                                                    'Get out to eat for ',
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                    ),
                                                  ),
                                                  Text(
                                                    '25% off',
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                right: 0,
                                                top: 0,
                                                bottom: 0,
                                                child: Image.asset('assets/images/card.png',height: 80,width: 50,),)

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 160,
                                    width: MediaQuery.of(context).size.width*0.5,
                                    // color: Colors.white,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home4Screen(),
                                          ),
                                        );
                                      },
                                      child: Card(
                                        color: Colors.white,
                                        surfaceTintColor: Colors.white,
                                        child: Padding(padding: EdgeInsets.all(16.0),
                                          child: Stack(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Shops',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18
                                                    ),
                                                  ),
                                                  Text(
                                                    'Top Brand to your',
                                                    style: TextStyle(
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                  Text(
                                                    'door',
                                                    style: TextStyle(
                                                        fontSize: 10
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                top: 60,
                                                bottom: 0,
                                                 right: 0,
                                                child: Image.asset('assets/images/card.png',height: 250,width: 70,),)

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 90,
                                    width: MediaQuery.of(context).size.width*0.5,
                                    // color: Colors.white,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home5Screen(),
                                          ),
                                        );
                                      },
                                      child: Card(
                                        color: Colors.white,
                                        surfaceTintColor: Colors.white,
                                        child: Padding(padding: EdgeInsets.all(16.0),
                                          child: Stack(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Pick-up',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15
                                                    ),
                                                  ),
                                                  Text(
                                                    'Self-collect for ',
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  Text(
                                                    '50% off',
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                right: 0,
                                                top: 0,
                                                bottom: 0,
                                                child: Image.asset('assets/images/card.png',height: 80,width: 50,),)

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 90,
                                    width: MediaQuery.of(context).size.width*0.5,
                                    // color: Colors.white,
                                    child: Card(
                                      color: Colors.white,
                                      surfaceTintColor: Colors.white,
                                      child: Padding(padding: EdgeInsets.all(16.0),
                                        child: Stack(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'pandago',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 15
                                                  ),
                                                ),
                                                Text(
                                                  'Send a parcel',
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                Text(
                                                  'in a tap',
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              bottom: 0,
                                              child: Image.asset('assets/images/card.png',height: 80,width: 50,),)

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                    child: Row(
                      children: [
                        Text('Popular resturants',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
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
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 205, // Width and height are the same to make it a perfect circle
                                        child: Stack(
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
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Master Biryani-Gulshan Market',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
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
                        Text('Cuisines',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 114,
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
                                    'assets/images/dessert.jpg',
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text('Dessert')
                              ],
                            ),
                          );
                        }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 0,); },
                      ),

                    ),
                  ),
                  Container(
                    height: 114,
                    child: Card(
                      elevation: 0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0), // Border radius
                                  child: Image.asset(
                                    'assets/images/dessert.jpg',
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text('Dessert')
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
                        Text('Popular for lunch',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
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
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 205, // Width and height are the same to make it a perfect circle
                                              child: Stack(
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
                                                  Positioned(
                                                    left: 0, // Adjust the left position as needed
                                                    top: 10, // Adjust the bottom position as needed
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.only(
                                                            bottomRight: Radius.circular(8.0),
                                                            topRight: Radius.circular(8.0),
                                                          ),
                                                          color: Colors.pink
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(4.0),
                                                        child: Text(
                                                          '10% off',
                                                          style: TextStyle(
                                                              color: Colors.white, // Adjust text color
                                                              fontSize: 12
                                                          ),
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
                                                  ),
                                                ),
                                              ],
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
                        Text('Pick up at a resturant near you',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ],
                    ),
                  ),
                  Stack(
                    children:[
                      Container(
                         height: MediaQuery.of(context).size.width-130,
                          width: MediaQuery.of(context).size.width,
                          child:Image.asset('assets/images/map.png',
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,)
                      ),
                      Positioned(
                        bottom: 10,
                          top: 10,
                          left: 5,
                          right: 5,
                          child:Row(
                              children: [
                                Container(
                                  // height: 100,
                                  // width: 130,
                                  child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap:  () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => MenuScreen(),
                                            ),
                                          );
                                        },

                                        child: Container(
                                          // color: Colors.white,
                                          height: 160,
                                          width: MediaQuery.of(context).size.width-26,
                                          child: ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 5,
                                            itemBuilder: (BuildContext context, int index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(left:10.0),
                                                child: Container(
                                                  padding: const EdgeInsets.all(10.0),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 100,
                                                        width: 200, // Width and height are the same to make it a perfect circle
                                                        child: Stack(
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
                                                              left: 0, // Adjust the left position as needed
                                                              top: 10, // Adjust the bottom position as needed
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.only(
                                                                      bottomRight: Radius.circular(8.0),
                                                                      topRight: Radius.circular(8.0),
                                                                    ),
                                                                    color: Colors.pink
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsets.all(4.0),
                                                                  child: Text(
                                                                    '10% off',
                                                                    style: TextStyle(
                                                                        color: Colors.white, // Adjust text color
                                                                        fontSize: 12
                                                                    ),
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
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text('671m away | Pick up in 5 min'),
                                                        ],
                                                      ),
                                                      // Row(
                                                      //   children: [
                                                      //     Text(
                                                      //       'PKR 0 delivery fee',
                                                      //       style: TextStyle(
                                                      //         fontWeight: FontWeight.bold,
                                                      //       ),
                                                      //     ),
                                                      //   ],
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 12,); },
                                          ),
                                        ),
                                      )

                                  ),
                                )
                              ]
                          ),
                      ),
                    ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                    child: Row(
                      children: [
                        Text('Your Daily Deals',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Card(
                      elevation: 0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0), // Border radius
                                  child: Image.asset(
                                    'assets/images/shell.jpeg',
                                    height: 190,
                                    width: 130,
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
                        Text('Shops',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 114,
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
                                    height: 70,
                                    width: 70,
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
                        Text('Dine with pandapro offers near you',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:8,top: 8,bottom: 0,left: 15),
                    child: Row(
                      children: [
                        Text('Exclusive offers with pandapro when you dine in',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                               fontSize: 12
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
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 235, // Width and height are the same to make it a perfect circle
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius: BorderRadius.circular(10.0), // Border radius
                                                    child: Image.asset(
                                                      'assets/images/biryani.jpg',
                                                      height: 100,
                                                      width: 230,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0, // Adjust the left position as needed
                                                    top: 10, // Adjust the bottom position as needed
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.only(
                                                            bottomRight: Radius.circular(8.0),
                                                            topRight: Radius.circular(8.0),
                                                          ),
                                                          color: Colors.pink
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(4.0),
                                                        child: Text(
                                                          '10% off',
                                                          style: TextStyle(
                                                              color: Colors.white, // Adjust text color
                                                              fontSize: 12
                                                          ),
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
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text('Biryani, Wraps & Rolls, Pulao'),
                                              ],
                                            ),
                                            // Row(
                                            //   children: [
                                            //     Text(
                                            //       'PKR 0 delivery fee',
                                            //       style: TextStyle(
                                            //         fontWeight: FontWeight.bold,
                                            //       ),
                                            //     ),
                                            //   ],
                                            // ),
                                          ],
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
                    padding: const EdgeInsets.only(top: 0.0,bottom: 12,left: 15,right: 15),
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all( // Optional: Add border for better visualization
                          color: Colors.grey.withOpacity(0.5),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width-48,
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Want 10 FREE delivery',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text('Join the pro club!'),
                                    ],
                                  ),
                                  Positioned(
                                    left: 220,
                                      top: 0,
                                      bottom: 0,
                                      child: Image.asset('assets/images/pro.png',
                                      height: 80,
                                      width: 80,),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}