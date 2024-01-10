
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(Icons.arrow_back_sharp,color: Colors.pink,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          title: Text('Orders',style: TextStyle(fontWeight: FontWeight.bold,),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // Spacer(),
                  Icon(Icons.shopping_bag_outlined,color: Colors.pink,),
                ],
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text('Past orders',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                      ],
                    ),
                  ),
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                       itemCount: 5,
                       shrinkWrap: true,
                       itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 1,
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child:ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset('assets/images/burger.jpg',
                                      height: 80,
                                      width: 80,
                                      fit: BoxFit.cover,),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                            Text('Bakehouse Cafe',style: TextStyle(fontWeight: FontWeight.bold),),
                                            SizedBox(width: 40,),
                                            Text('Rs. 150.00',style: TextStyle(fontWeight: FontWeight.bold),),
                                          ],),
                                          SizedBox(height: 8,),
                                          Text('Picked up on 11 jan 18:07',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                          SizedBox(height: 8,),
                                          Text('Hot and Sour Soup',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                        ],
                                      ),
                                    ),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Center(
                                child: SizedBox(
                                  height: 40,
                                  width: 320,
                                  child: ElevatedButton(
                                    child: Text(
                                      'Select items to reorder',
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
                                          fontSize: 16,
                                          // fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10,); },
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}