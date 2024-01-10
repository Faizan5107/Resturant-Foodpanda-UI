
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart_screen.dart';
import '../favourite_screen.dart';

class Home4Screen extends StatefulWidget {
  const Home4Screen({super.key});

  @override
  State<Home4Screen> createState() => _Home4ScreenState();
}

class _Home4ScreenState extends State<Home4Screen> {

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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
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
                        Divider(color: Colors.black12,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Card(
                                elevation: 0,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 35,
                                      child: ClipOval(
                                        child: CachedNetworkImage(
                                          imageUrl:  'https://static.vecteezy.com/system/resources/previews/004/439/485/original/store-cartoon-illustration-free-vector.jpg',
                                          fit: BoxFit.cover,
                                          width: 80,
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                    Text('Convenience',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),),
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 0,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 35,
                                      child: ClipOval(
                                        child: CachedNetworkImage(
                                          imageUrl:  'https://cdn.dribbble.com/users/726805/screenshots/3026451/media/854f49b2bd21bc472507de84d82579f4.gif',
                                          fit: BoxFit.cover,
                                          width: 80,
                                          height: 80,
                                        ),
                                      ),
                                    ),
                                    Text('Groceries',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),),
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 0,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 35,
                                      child: ClipOval(
                                        child: CachedNetworkImage(
                                          imageUrl:  'https://t3.ftcdn.net/jpg/05/37/35/54/360_F_537355438_mABXANQB4iC8A3VKuFqg5qEF7OcSwG05.jpg',
                                          fit: BoxFit.cover,
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                    Text('View all',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Text('Popular Shops',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Card(
                              elevation: 0,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset('assets/images/shell.jpeg',
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text('Shell Slect (MPS)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),),
                                    Row(children: [
                                      Icon(Icons.access_time_sharp,size: 12,),
                                      SizedBox(width: 2,),
                                      Text('20 mins',style: TextStyle(fontSize: 10),),
                                      SizedBox(width: 5,),
                                      Icon(Icons.circle,size: 4,),
                                      SizedBox(width: 5,),
                                      Icon(Icons.delivery_dining_sharp,size: 12,),
                                      SizedBox(width: 2,),
                                      Text('Rs. 80.00',style: TextStyle(fontSize: 10),),
                                    ],)
                                  ],),
                                  SizedBox(width: 60,),
                                  Icon(Icons.favorite_border_sharp,size: 16,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Card(
                              elevation: 0,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset('assets/images/shell.jpeg',
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Shell Slect (MPS)',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),),
                                      Row(children: [
                                        Icon(Icons.access_time_sharp,size: 12,),
                                        SizedBox(width: 2,),
                                        Text('20 mins',style: TextStyle(fontSize: 10),),
                                        SizedBox(width: 5,),
                                        Icon(Icons.circle,size: 4,),
                                        SizedBox(width: 5,),
                                        Icon(Icons.delivery_dining_sharp,size: 12,),
                                        SizedBox(width: 2,),
                                        Text('Rs. 80.00',style: TextStyle(fontSize: 10),),
                                      ],)
                                    ],),
                                  SizedBox(width: 60,),
                                  Icon(Icons.favorite_border_sharp,size: 16,),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 250,
                          // width: 245,
                          child: ListView.separated(
                             scrollDirection: Axis.horizontal,
                             itemCount: 5,
                             // shrinkWrap: true,
                             itemBuilder: (BuildContext context, int index){
                             return Row(
                               children: [
                                 Card(
                                   elevation: 0,
                                   child:Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       ClipRRect(
                                         borderRadius: BorderRadius.circular(16),
                                         child: Image.asset('assets/images/apple.jpg',
                                         height: 150,
                                         width: 150,
                                         fit: BoxFit.cover,),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text('Rs. 50.00',style: TextStyle(fontWeight: FontWeight.bold),),
                                             Text('Brand'),
                                             Text('Variation'),
                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 if(index == 4)
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                         SizedBox(height: 50,),
                                         Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                                         SizedBox(height: 10,),
                                         Text('See more in shop',
                                         style: TextStyle(
                                           color: Colors.pink,

                                         ),),
                                       ],
                                     ),
                                   ),
                               ],
                             );
                           }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 5,); },
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Text('Save big on your groceries',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
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
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
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
                              Text(
                                'Shell',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '20 mins',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
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
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Text('Save big on your groceries',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                  ),
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
                  Container(
                    // height: 200,
                    child: Card(
                      elevation: 0,
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset('assets/images/shell.jpeg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shell Slect (MPS)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),),
                                  Row(children: [
                                    Icon(Icons.access_time_sharp,size: 12,),
                                    SizedBox(width: 2,),
                                    Text('20 mins',style: TextStyle(fontSize: 10),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.circle,size: 4,),
                                    SizedBox(width: 5,),
                                    Icon(Icons.delivery_dining_sharp,size: 12,),
                                    SizedBox(width: 2,),
                                    Text('Rs. 80.00',style: TextStyle(fontSize: 10),),
                                  ],)
                                ],),
                              SizedBox(width: 60,),
                              Icon(Icons.favorite_border_sharp,size: 16,),
                            ],
                          );
                        }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10,); },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}