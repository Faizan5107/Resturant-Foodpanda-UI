
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_sharp,color: Colors.pink,),
          backgroundColor: Colors.white,
          title: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold),),
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
                            Text('Language',style: TextStyle(color: Colors.grey),),
                            Spacer(),
                            Text('Edit',style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('English',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                            Icon(Icons.check_box,color: Colors.pink,),
                            SizedBox(width: 5,),
                            Text('Receive push notifications'),
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
                            Icon(Icons.check_box,color: Colors.pink,),
                            SizedBox(width: 5,),
                            Text('Receive push notifications'),
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
                            Icon(Icons.check_box,color: Colors.pink,),
                            SizedBox(width: 5,),
                            Text('Receive push notifications'),
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