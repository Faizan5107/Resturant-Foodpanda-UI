
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/Helper/couponwidget.dart';

class VoucherScreen extends StatefulWidget {
  const VoucherScreen({super.key});

  @override
  State<VoucherScreen> createState() => _VoucherScreenState();
}

class _VoucherScreenState extends State<VoucherScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp,color: Colors.pink,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          title: Text('Voucher & Offers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.grey.shade100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: Colors.black12,  // You can set the color of the border
                                  width: 1.0,
                                ),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width*0.5 - 12,
                            child:Column(
                            children: [
                              Text('Rs.0.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              Text('Saved this month'),
                            ]
                          ),
                        ),
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width*0.5 - 12,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.local_offer_outlined,color: Colors.pink,),
                                  SizedBox(width: 5,),
                                  Text('Add a Voucher',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink,
                                  ),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Row(
                      children: [
                        ElevatedButton(
                          child: Wrap(
                            children: [
                              Text("Sort",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 18.0,
                              ),
                            ],
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Sort by',
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text('Clear',
                                                  style: TextStyle(
                                                    color: Colors.pink,
                                                  ),),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text('Latest(default)'),
                                                Spacer(),
                                                Icon(Icons.circle_outlined,color: Colors.pink,)
                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text('Expired'),
                                                Spacer(),
                                                Icon(Icons.circle_outlined,color: Colors.pink,)
                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text('Minimum Order Value'),
                                                Spacer(),
                                                Icon(Icons.circle_outlined,color: Colors.pink,)
                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width-16,
                                                  child: ElevatedButton(
                                                    child: Text(
                                                      'Apply',
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
                                                          fontSize: 15,
                                                          // fontWeight: FontWeight.bold,
                                                        )),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              //  primary: Colors.white,
                              backgroundColor: Colors.white,
                              surfaceTintColor: Colors.white,
                              side: BorderSide(width: 0.2, color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              textStyle: TextStyle(
                                // fontWeight: FontWeight.bold,
                              )),
                        ),
                        SizedBox(width: 5,),
                        ElevatedButton(
                          child: Wrap(
                            children: [
                              Text("Resturant",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                              // SizedBox(
                              //   width: 2,
                              // ),
                              // Icon(
                              //   Icons.keyboard_arrow_down,
                              //   color: Colors.black,
                              //   size: 18.0,
                              // ),
                            ],
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              //  primary: Colors.white,
                              backgroundColor: Colors.white,
                              surfaceTintColor: Colors.white,
                              side: BorderSide(width: 0.2, color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              textStyle: TextStyle(
                                // fontWeight: FontWeight.bold,
                              ),
                        ),
                        ),
                        SizedBox(width: 5,),
                        ElevatedButton(
                          child: Wrap(
                            children: [
                              Text("Shops",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                              // SizedBox(
                              //   width: 2,
                              // ),
                              // Icon(
                              //   Icons.keyboard_arrow_down,
                              //   color: Colors.black,
                              //   size: 18.0,
                              // ),
                            ],
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            //  primary: Colors.white,
                            backgroundColor: Colors.white,
                            surfaceTintColor: Colors.white,
                            side: BorderSide(width: 0.2, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            textStyle: TextStyle(
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  couponWidget(context),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(0),
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade300,
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
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(0),
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Text('Refer a friend',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 330,
                        // color: Colors.white,
                        child: Card(
                          elevation: 1,
                          surfaceTintColor: Colors.white,
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
                ],
              ),
            ),
          )
        )
    );
  }
}