
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuisnessScreen extends StatefulWidget {
  const BuisnessScreen({super.key});

  @override
  State<BuisnessScreen> createState() => _BuisnessScreenState();
}

class _BuisnessScreenState extends State<BuisnessScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.multiply,color: Colors.pink,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          title: Text('foodpanda for buisness'),
        ),
        body:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/pro.png'),
                Card(
                  surfaceTintColor: Colors.white,
                  // elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('foodpanda for buisness',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(22,8,22,8),
                          child: Column(
                            children: [
                              Text('Grow your buisness by keeping your employees happy and fed ',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ListTile(
                        leading: SizedBox(width: 40, child: Icon(Icons.card_giftcard,color: Colors.pink,size: 30,)),
                        title: Text('Food worth working for',style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Allowances, pandapro, gift vouchers, catering & office pantry'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Divider(),
                      ),
                      ListTile(
                        leading: SizedBox(width: 40, child: Icon(Icons.mobile_friendly,color: Colors.pink,size: 30,)),
                        title: Text('Expense Control',style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Easy employee management, allowance rules, monthly invoicing'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Divider(),
                      ),
                      ListTile(
                        leading: SizedBox(width: 40, child: Icon(Icons.star_half_sharp,color: Colors.pink,size: 30,)),
                        title: Text('Dedicated Support',style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Get in touch with our teams for any issue or hot resturant tips'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Divider(),
                      ),
                      Row(
                        children: [
                          Icon(Icons.store_outlined,color: Colors.pink,size: 30,),
                          SizedBox(width: 5,),
                          Text('Looking to be a resturant or shop partner?',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Text('Visit our partner page',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  color: Colors.white,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    // height:50,
                    child: Container(
                      child: ElevatedButton(
                        child: Text(
                          'I am Interested',
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
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                            )),
                      ),
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