
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.multiply,color: Colors.pink,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          title: Text('Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
        ),
        body:SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Card(
                  surfaceTintColor: Colors.white,
                  color: Colors.white,
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Name',style: TextStyle(color: Colors.grey),),
                            Spacer(),
                            Icon(CupertinoIcons.pen,color: Colors.pink,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Faizan Malik',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  surfaceTintColor: Colors.white,
                  color: Colors.white,
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Email',style: TextStyle(color: Colors.grey),),
                            Spacer(),
                            Icon(CupertinoIcons.pen,color: Colors.pink,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('faiznawazmanzil@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ],
                        ),
                        Row(children: [
                          ElevatedButton(
                            child: Text(
                              'Verify email',
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
                        ],),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  surfaceTintColor: Colors.white,
                  color: Colors.white,
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Password',style: TextStyle(color: Colors.grey),),
                            Spacer(),
                            Icon(CupertinoIcons.pen,color: Colors.pink,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('**********',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  surfaceTintColor: Colors.white,
                  color: Colors.white,
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Mobile number',style: TextStyle(color: Colors.grey),),
                            Spacer(),
                            Icon(CupertinoIcons.pen,color: Colors.pink,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('+923129557349',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ],
                        ),
                        Row(children: [
                          ElevatedButton(
                            child: Text(
                              'Verified',
                              style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side:
                                BorderSide(width: 1, color: Colors.pink),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                        ),
                      ],
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