
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp,color: Colors.pink,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          title: Text('Addresses',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: 15,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.place_outlined,color: Colors.pink,size: 25,),
                                SizedBox(width: 10,),
                                Text('BZU',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                Spacer(),
                                Icon(CupertinoIcons.pen,color: Colors.pink,size: 25,),
                                Icon(Icons.delete_outline_sharp,color: Colors.pink,size: 25,),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35,5,5,5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Multan',style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('Note to rider: none',style: TextStyle(
                                        color: Colors.grey,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }, separatorBuilder: (BuildContext context, int index) { return Divider(); },
                    ),
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
                          'Add New Address',
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