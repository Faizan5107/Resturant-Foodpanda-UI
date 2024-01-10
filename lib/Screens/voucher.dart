
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
          child: Container(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Card(
                    surfaceTintColor: Colors.white,
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
                  Row(
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
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
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
                            // backgroundColor: Colors.white,
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
                            // backgroundColor: Colors.white,
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
                          // backgroundColor: Colors.white,
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
                  couponWidget(),
                ],
              ),
            ),
          )
        )
    );
  }
}