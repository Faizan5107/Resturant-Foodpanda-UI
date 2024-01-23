import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DolDurmaClipper extends CustomClipper<Path> {
  final double holeRadius;

  DolDurmaClipper({required this.holeRadius});

  @override
  Path getClip(Size size) {
    var bottom = size.height / 2;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0.0, size.height - bottom - holeRadius)
      ..arcToPoint(
        Offset(0, size.height - bottom),
        clockwise: true,
        radius: Radius.circular(1),
      )
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - bottom)
      ..arcToPoint(
        Offset(size.width, size.height - bottom - holeRadius),
        clockwise: true,
        radius: Radius.circular(1),
      );

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}

Widget couponWidget(context) {
  return Container(
    height: 170,
    width: 350,
    margin: const EdgeInsets.only(left: 20, right: 20, top: 10,),
    child: ClipPath(
      clipper: DolDurmaClipper(holeRadius: 20),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Positioned(
                    top: 0,
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.2-10,
                          child: Icon(CupertinoIcons.rectangle_3_offgrid_fill,color: Colors.pink,)),
                      Container(
                        width: MediaQuery.of(context).size.width*0.7-10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('pick up again with Rs.100 off'),
                            Row(
                              children: [
                                Text('Rs.100.00',style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 3,),
                                Icon(Icons.integration_instructions_sharp,color: Colors.pink,size: 20,),
                                SizedBox(width: 3,),
                                Text('VZPIRYXP'),
                                SizedBox(width: 3,),
                                SizedBox(width: 30,
                                  height: 18,
                                  child: OutlinedButton(onPressed: (){},
                                      style: OutlinedButton.styleFrom(
                                        padding: EdgeInsets.all(0),
                                        side: BorderSide(color: Colors.pink),
                                      ),
                                      child: Text('New',
                                      style: TextStyle(
                                        color: Colors.pink,
                                        fontSize: 10,
                                      ),)),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
                ),
                const SizedBox(height: 0), // Top widgets
                Padding(
                  //Separater line
                  padding: const EdgeInsets.only(left: 20, right: 20,bottom: 15),
                  child: Divider(),
                ),
                const SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Positioned(
                      top: 0,
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*0.2-10,
                              child: Icon(CupertinoIcons.rectangle_3_offgrid_fill,color: Colors.pink,)),
                          Container(
                            width: MediaQuery.of(context).size.width*0.7-10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('pick up again with Rs.100 off'),
                                Row(
                                  children: [
                                    Text('Rs.100.00',style: TextStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(width: 3,),
                                    Icon(Icons.integration_instructions_sharp,color: Colors.pink,size: 20,),
                                    SizedBox(width: 3,),
                                    Text('VZPIRYXP'),
                                    SizedBox(width: 3,),
                                    SizedBox(width: 30,
                                      height: 18,
                                      child: OutlinedButton(onPressed: (){},
                                          style: OutlinedButton.styleFrom(
                                            padding: EdgeInsets.all(0),
                                            side: BorderSide(color: Colors.pink),
                                          ),
                                          child: Text('New',
                                            style: TextStyle(
                                              color: Colors.pink,
                                              fontSize: 10,
                                            ),)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),// Bottom widgets
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
