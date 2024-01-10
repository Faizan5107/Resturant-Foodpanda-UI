import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});
  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}
class _HelpCenterScreenState extends State<HelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.multiply,color: Colors.pink,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('How can we help?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
        body:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('How can we help?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.pink,
                  ),),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.shopping_bag),
                        title: Text('Get help with my orders'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(CupertinoIcons.bag_badge_minus),
                        title: Text('I am having trouble placing an order'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.mail_outline),
                        title: Text('My Support Request'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(CupertinoIcons.gift_fill),
                        title: Text('pandapro'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.restaurant),
                        title: Text('Dine in'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.handshake_outlined),
                        title: Text('pandago'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.person_2_sharp),
                        title: Text('My Acount'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.safety_check_sharp),
                        title: Text('Safety Concerns'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.credit_card),
                        title: Text('Payments & Refunds'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.token_sharp),
                        title: Text('Voucher & Rewards'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.add_card_rounded),
                        title: Text('Get help with pandapay'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.linear_scale_sharp),
                        title: Text('FAQ'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                      Divider(thickness: 0.3,),
                      ListTile(
                        leading: Icon(Icons.cookie_outlined),
                        title: Text('Foodpanda for buisness'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}