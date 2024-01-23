

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturant/Helper/switch_button.dart';
import 'package:resturant/Screens/menu_screen.dart';

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
              onPressed: (){
                Get.to(MenuScreen());
              },
              icon: Icon(CupertinoIcons.multiply,color: Colors.pink,)),
          actions: [
            // ListTile(leading: Icon(CupertinoIcons.multiply,color: Colors.pink,),
            //   // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            //   title: Text('Cart'),
            //   subtitle: Text('Madina Yakhni Pulao - Gulshan Market'),
            // )
            Padding(
              padding: const EdgeInsets.only(right: 88.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cart',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),),
                  Text('Madina Yakhni Pulao - Gulshan Market',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade500
                  ),),
                ],
              ),
            )
          ],
        ),
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 8,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.pink
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black12,width: 0.7)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('assets/images/delivery.jpg',height: 50,width: 90,fit: BoxFit.contain,)),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Estimated Delivery',style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade500
                                    ),),
                                    Text('Now (30 min)',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    Text('Change',
                                      style: TextStyle(
                                        color: Colors.pink,
                                      ),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.black12,width: 1)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('1'),
                                  Icon(Icons.keyboard_arrow_down_sharp,color: Colors.pink,)
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                                child: Image.asset('assets/images/biryani.jpg',height: 40,width: 60,fit: BoxFit.cover,)),
                            SizedBox(width: 10,),
                            Text('Yakhni Pulao',
                            style: TextStyle(
                              color: Colors.pink,
                            ),),
                            Spacer(),
                            Text('Rs.200.00'),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      const Divider(
                        thickness: 0.3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Add more items',
                        style: TextStyle(
                          color: Colors.pink,
                        ),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.all(0),
                        height: 8,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey.shade200,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Popular with your order',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text('Other customers also bought these',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 14,
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        child: Card(
                          elevation: 0,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            6), // Border radius
                                        child: Image.asset(
                                          'assets/images/shell.jpeg',
                                          height: 120,
                                          width: 130,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        right: 10,
                                          bottom: 10,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white
                                            ),
                                            child: Icon(Icons.add,color: Colors.pink,),
                                          )),
                                    ],
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
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                width: 10,
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        height: 8,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey.shade200,
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border:Border.all(color:Colors.black12,),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.6+9,
                                  child: Column(
                                    children: [
                                      Row(
                                        // mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset('assets/images/pro.png',height: 60,width: 40,),
                                          SizedBox(width: 5,),
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width*0.5,
                                            child: Text('Want free delivery with pro?',
                                            // maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          )
                                        ],
                                      ),
                                      Text('Subscribr from Rs. 166.58/month! Min. spend applies')
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4-45,
                                  child: Center(
                                    child: Text('Add to cart',
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('Subtotal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),),
                        trailing: Text('Rs. 200.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),),
                      ),
                      ListTile(
                        leading: Text('Delivery Fee',
                        style: TextStyle(
                          fontSize: 14
                        ),),
                        trailing: Text('Rs. 69.00',
                        style: TextStyle(
                          fontSize: 14
                        ),),
                      ),
                      ListTile(
                        leading: Text('Platform Fee',
                        style: TextStyle(
                          fontSize: 14
                        ),),
                      trailing: Text('Rs. 7.99',
                      style: TextStyle(
                        fontSize: 14
                      ),),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.ticket,color: Colors.pink,),
                            SizedBox(width: 5,),
                            Text('Apply a voucher',
                            style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        height: 8,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey.shade200,
                      ),
                      // ListTile(
                      //   leading: Icon(Icons.local_dining,color: Colors.pink,),
                      //   title: Text('Cutlery'),
                      //   trailing: SwitchButton(),
                      // )
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.local_dining,color: Colors.pink,),
                            SizedBox(width: 10,),
                            Text('Cutlery',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                            Spacer(),
                            SwitchButton(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('We would not bring cutlery. Thanks for helping us reduce waste',
                        style: TextStyle(
                          color: Colors.grey.shade600
                        ),),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 0.3,
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8,left: 8,top: 4),
                child: Row(
                  children: [
                    const Text('Total',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                      fontSize: 20),),
                    Text('(incl. VAT)',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                    ),),
                    Spacer(),
                    Text('Rs.276.99',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8,left: 8),
                child: Text('See price breakdown',
                style: TextStyle(
                  color: Colors.pink
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: ElevatedButton(
                      onPressed: () {
                        Get.to(CartScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0), // Circular border radius
                        ),
                      ),
                      child: Text(
                        'Confirm Payment and address',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),)
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}