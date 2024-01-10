
import 'package:flutter/material.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({super.key});

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp,color: Colors.pink,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('How it works',
                  style: TextStyle(
                    color: Colors.pink,
                  ),),
                ],
              ),
            )
          ],
        ),
        body:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: Image.asset('assets/images/card.png',
                  height: 200,
                  width: 300,),
                ),
                Text('Invite friends, get Rs. 350.00',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 20,top: 20,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('1. Your friend gets Rs.500.00 ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),),
                      ),
                      Text('1 x Rs.250.00 food delivery voucher',
                      style: TextStyle(
                        color: Colors.grey,
                      ),),
                      Text('1 x Rs.125.00 shops voucher',
                        style: TextStyle(
                          color: Colors.grey,
                        ),),
                      Text('1 x Rs.125.00 pandamart voucher',
                        style: TextStyle(
                          color: Colors.grey,
                        ),),
                      SizedBox(height: 20,),
                      Text('when they sign up with your invite link',
                        style: TextStyle(
                          color: Colors.grey,
                        ),),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('2. Then You gets Rs.350.00 ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),),
                      ),
                      Text('once thy place thier firstorder (min. Rs.500.00)',
                        style: TextStyle(
                          color: Colors.grey,
                        ),),
                    ],
                  ),
                ),
                SizedBox(height: 150,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    child: Text(
                      'Share Your Link',
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
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    child: Text(
                      'Scan QR Code',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side:
                        BorderSide(width: 1.5, color: Colors.pink),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        textStyle: TextStyle(
                          fontSize: 20,
                          // fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}