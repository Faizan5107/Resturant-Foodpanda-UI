//
// import 'package:flutter/material.dart';
//
// class MenuItems extends StatefulWidget {
//   const MenuItems({super.key});
//
//   @override
//   State<MenuItems> createState() => _MenuItemsState();
// }
//
// class _MenuItemsState extends State<MenuItems> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(
//         //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         //   title: Text('Home'),
//         // ),
//         body:SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Container(
//                   // height: MediaQuery.of(context).size.height-393,
//                   child: ListView.separated(
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: 5,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Column(
//                         children: [
//                           Row(
//                             children: [
//                               Column(
//                                 children: [
//                                   Text('Desi',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             child: Text('Delicios Tortila bread with tender chicken breast and asublime sauce',),
//                             width: 340,),
//                           SizedBox(height: 10,),
//                           Row(
//                             children: [
//                               Container(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Special Tortilla Wrap',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 15,
//                                       ),),
//                                     SizedBox(
//                                       child: Text('Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
//                                         overflow: TextOverflow.ellipsis,
//                                         maxLines: 2,),
//                                       width: 200,),
//                                     SizedBox(height: 10,),
//                                     Row(
//                                       children: [
//                                         Text('from Rs. 530.00'),
//                                         SizedBox(width: 7,),
//                                         Container(
//                                           decoration: BoxDecoration(
//                                               color: Colors.grey[400],
//                                               // border: Border.all(
//                                               //   color: Colors.grey,
//                                               //   width: 1
//                                               // ),
//                                               borderRadius: BorderRadius.circular(16)
//                                           ),
//                                           // color: Colors.grey,
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(2.0),
//                                             child: Row(
//                                               children: [
//                                                 Icon(Icons.local_fire_department_sharp,
//                                                   size: 14,),
//                                                 Text('Popular',
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 14,
//                                                   ),),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 child: Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(10.0), // Border radius
//                                         child: Image.asset('assets/images/tortilla.jpg',
//                                           height: 100,
//                                           width: 110,
//                                           fit: BoxFit.cover,),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       right: 0,
//                                       bottom: 0,
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.pink,
//                                           //   border: Border.all(
//                                           //     color: Colors.white, // Border color
//                                           //     width: 2.0, // Border width
//                                           // ),
//                                         ),
//                                         child: Icon(Icons.add,
//                                           color: Colors.white,),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       );
//                     }, separatorBuilder: (BuildContext context, int index) { return Divider(height: 20,); },
//
//                   ),
//                 ),
//                 Container(
//                   // height: MediaQuery.of(context).size.height-393,
//                   child: ListView.separated(
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: 5,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Column(
//                         children: [
//                           Row(
//                             children: [
//                               Column(
//                                 children: [
//                                   Text('Cuisine',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             child: Text('Delicios Tortila bread with tender chicken breast and asublime sauce',),
//                             width: 340,),
//                           SizedBox(height: 10,),
//                           Row(
//                             children: [
//                               Container(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Special Tortilla Wrap',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 15,
//                                       ),),
//                                     SizedBox(
//                                       child: Text('Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
//                                         overflow: TextOverflow.ellipsis,
//                                         maxLines: 2,),
//                                       width: 200,),
//                                     SizedBox(height: 10,),
//                                     Row(
//                                       children: [
//                                         Text('from Rs. 530.00'),
//                                         SizedBox(width: 7,),
//                                         Container(
//                                           decoration: BoxDecoration(
//                                               color: Colors.grey[400],
//                                               // border: Border.all(
//                                               //   color: Colors.grey,
//                                               //   width: 1
//                                               // ),
//                                               borderRadius: BorderRadius.circular(16)
//                                           ),
//                                           // color: Colors.grey,
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(2.0),
//                                             child: Row(
//                                               children: [
//                                                 Icon(Icons.local_fire_department_sharp,
//                                                   size: 14,),
//                                                 Text('Popular',
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 14,
//                                                   ),),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 child: Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(10.0), // Border radius
//                                         child: Image.asset('assets/images/tortilla.jpg',
//                                           height: 100,
//                                           width: 110,
//                                           fit: BoxFit.cover,),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       right: 0,
//                                       bottom: 0,
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.pink,
//                                           //   border: Border.all(
//                                           //     color: Colors.white, // Border color
//                                           //     width: 2.0, // Border width
//                                           // ),
//                                         ),
//                                         child: Icon(Icons.add,
//                                           color: Colors.white,),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       );
//                     }, separatorBuilder: (BuildContext context, int index) { return Divider(height: 20,); },
//
//                   ),
//                 ),
//                 Container(
//                   // height: MediaQuery.of(context).size.height-393,
//                   child: ListView.separated(
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: 5,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Column(
//                         children: [
//                           Row(
//                             children: [
//                               Column(
//                                 children: [
//                                   Text('Desserts',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             child: Text('Delicios Tortila bread with tender chicken breast and asublime sauce',),
//                             width: 340,),
//                           SizedBox(height: 10,),
//                           Row(
//                             children: [
//                               Container(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Special Tortilla Wrap',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 15,
//                                       ),),
//                                     SizedBox(
//                                       child: Text('Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
//                                         overflow: TextOverflow.ellipsis,
//                                         maxLines: 2,),
//                                       width: 200,),
//                                     SizedBox(height: 10,),
//                                     Row(
//                                       children: [
//                                         Text('from Rs. 530.00'),
//                                         SizedBox(width: 7,),
//                                         Container(
//                                           decoration: BoxDecoration(
//                                               color: Colors.grey[400],
//                                               // border: Border.all(
//                                               //   color: Colors.grey,
//                                               //   width: 1
//                                               // ),
//                                               borderRadius: BorderRadius.circular(16)
//                                           ),
//                                           // color: Colors.grey,
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(2.0),
//                                             child: Row(
//                                               children: [
//                                                 Icon(Icons.local_fire_department_sharp,
//                                                   size: 14,),
//                                                 Text('Popular',
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 14,
//                                                   ),),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 child: Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(10.0), // Border radius
//                                         child: Image.asset('assets/images/tortilla.jpg',
//                                           height: 100,
//                                           width: 110,
//                                           fit: BoxFit.cover,),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       right: 0,
//                                       bottom: 0,
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.pink,
//                                           //   border: Border.all(
//                                           //     color: Colors.white, // Border color
//                                           //     width: 2.0, // Border width
//                                           // ),
//                                         ),
//                                         child: Icon(Icons.add,
//                                           color: Colors.white,),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       );
//                     }, separatorBuilder: (BuildContext context, int index) { return Divider(height: 20,); },
//
//                   ),
//                 ),
//                 Container(
//                   // height: MediaQuery.of(context).size.height-393,
//                   child: ListView.separated(
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: 5,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Column(
//                         children: [
//                           Row(
//                             children: [
//                               Column(
//                                 children: [
//                                   Text('Beverages',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             child: Text('Delicios Tortila bread with tender chicken breast and asublime sauce',),
//                             width: 340,),
//                           SizedBox(height: 10,),
//                           Row(
//                             children: [
//                               Container(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Special Tortilla Wrap',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 15,
//                                       ),),
//                                     SizedBox(
//                                       child: Text('Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
//                                         overflow: TextOverflow.ellipsis,
//                                         maxLines: 2,),
//                                       width: 200,),
//                                     SizedBox(height: 10,),
//                                     Row(
//                                       children: [
//                                         Text('from Rs. 530.00'),
//                                         SizedBox(width: 7,),
//                                         Container(
//                                           decoration: BoxDecoration(
//                                               color: Colors.grey[400],
//                                               // border: Border.all(
//                                               //   color: Colors.grey,
//                                               //   width: 1
//                                               // ),
//                                               borderRadius: BorderRadius.circular(16)
//                                           ),
//                                           // color: Colors.grey,
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(2.0),
//                                             child: Row(
//                                               children: [
//                                                 Icon(Icons.local_fire_department_sharp,
//                                                   size: 14,),
//                                                 Text('Popular',
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 14,
//                                                   ),),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 child: Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(10.0), // Border radius
//                                         child: Image.asset('assets/images/tortilla.jpg',
//                                           height: 100,
//                                           width: 110,
//                                           fit: BoxFit.cover,),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       right: 0,
//                                       bottom: 0,
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.pink,
//                                           //   border: Border.all(
//                                           //     color: Colors.white, // Border color
//                                           //     width: 2.0, // Border width
//                                           // ),
//                                         ),
//                                         child: Icon(Icons.add,
//                                           color: Colors.white,),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       );
//                     }, separatorBuilder: (BuildContext context, int index) { return Divider(height: 20,); },
//
//                   ),
//                 ),
//                 Container(
//                   // height: MediaQuery.of(context).size.height-393,
//                   child: ListView.separated(
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: 5,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Column(
//                         children: [
//                           Row(
//                             children: [
//                               Column(
//                                 children: [
//                                   Text('Chinese',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             child: Text('Delicios Tortila bread with tender chicken breast and asublime sauce',),
//                             width: 340,),
//                           SizedBox(height: 10,),
//                           Row(
//                             children: [
//                               Container(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Special Tortilla Wrap',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 15,
//                                       ),),
//                                     SizedBox(
//                                       child: Text('Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
//                                         overflow: TextOverflow.ellipsis,
//                                         maxLines: 2,),
//                                       width: 200,),
//                                     SizedBox(height: 10,),
//                                     Row(
//                                       children: [
//                                         Text('from Rs. 530.00'),
//                                         SizedBox(width: 7,),
//                                         Container(
//                                           decoration: BoxDecoration(
//                                               color: Colors.grey[400],
//                                               // border: Border.all(
//                                               //   color: Colors.grey,
//                                               //   width: 1
//                                               // ),
//                                               borderRadius: BorderRadius.circular(16)
//                                           ),
//                                           // color: Colors.grey,
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(2.0),
//                                             child: Row(
//                                               children: [
//                                                 Icon(Icons.local_fire_department_sharp,
//                                                   size: 14,),
//                                                 Text('Popular',
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 14,
//                                                   ),),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 child: Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(10.0), // Border radius
//                                         child: Image.asset('assets/images/tortilla.jpg',
//                                           height: 100,
//                                           width: 110,
//                                           fit: BoxFit.cover,),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       right: 0,
//                                       bottom: 0,
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.pink,
//                                           //   border: Border.all(
//                                           //     color: Colors.white, // Border color
//                                           //     width: 2.0, // Border width
//                                           // ),
//                                         ),
//                                         child: Icon(Icons.add,
//                                           color: Colors.white,),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       );
//                     }, separatorBuilder: (BuildContext context, int index) { return Divider(height: 20,); },
//
//                   ),
//                 ),
//                 Container(
//                   // height: MediaQuery.of(context).size.height-393,
//                   child: ListView.separated(
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: 5,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Column(
//                         children: [
//                           Row(
//                             children: [
//                               Column(
//                                 children: [
//                                   Text('Extra',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             child: Text('Delicios Tortila bread with tender chicken breast and asublime sauce',),
//                             width: 340,),
//                           SizedBox(height: 10,),
//                           Row(
//                             children: [
//                               Container(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Special Tortilla Wrap',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 15,
//                                       ),),
//                                     SizedBox(
//                                       child: Text('Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
//                                         overflow: TextOverflow.ellipsis,
//                                         maxLines: 2,),
//                                       width: 200,),
//                                     SizedBox(height: 10,),
//                                     Row(
//                                       children: [
//                                         Text('from Rs. 530.00'),
//                                         SizedBox(width: 7,),
//                                         Container(
//                                           decoration: BoxDecoration(
//                                               color: Colors.grey[400],
//                                               // border: Border.all(
//                                               //   color: Colors.grey,
//                                               //   width: 1
//                                               // ),
//                                               borderRadius: BorderRadius.circular(16)
//                                           ),
//                                           // color: Colors.grey,
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(2.0),
//                                             child: Row(
//                                               children: [
//                                                 Icon(Icons.local_fire_department_sharp,
//                                                   size: 14,),
//                                                 Text('Popular',
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 14,
//                                                   ),),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 child: Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(10.0), // Border radius
//                                         child: Image.asset('assets/images/tortilla.jpg',
//                                           height: 100,
//                                           width: 110,
//                                           fit: BoxFit.cover,),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       right: 0,
//                                       bottom: 0,
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.pink,
//                                           //   border: Border.all(
//                                           //     color: Colors.white, // Border color
//                                           //     width: 2.0, // Border width
//                                           // ),
//                                         ),
//                                         child: Icon(Icons.add,
//                                           color: Colors.white,),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       );
//                     }, separatorBuilder: (BuildContext context, int index) { return Divider(height: 20,); },
//
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }