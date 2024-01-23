import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../menu_screen.dart';

class Home3Screen extends StatefulWidget {
  const Home3Screen({super.key});

  @override
  State<Home3Screen> createState() => _Home3ScreenState();
}

class _Home3ScreenState extends State<Home3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp),
            color: Colors.pink,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 13),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Multan',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // color: Colors.pinkAccent,
                      height: 35,
                      width: 270,
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(9),
                          hintText: 'Search for shops & resturant',
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: Colors.black12.withOpacity(0.4),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.black12.withOpacity(0.4),
                            fontSize: 16,
                            // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.pink,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        child: Wrap(
                          children: [
                            Text("Cuisines",
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
                                                  'Cuisines',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                // color: Colors.pinkAccent,
                                                height: 35,
                                                width: 300,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 16.0),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius:
                                                      BorderRadius.circular(40.0),
                                                ),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.all(9),
                                                    hintText:
                                                        'Search for shops & resturant',
                                                    border: InputBorder.none,
                                                    prefixIcon: Icon(
                                                      CupertinoIcons.search,
                                                      color: Colors.black12
                                                          .withOpacity(0.4),
                                                    ),
                                                    hintStyle: TextStyle(
                                                      color: Colors.black12
                                                          .withOpacity(0.4),
                                                      fontSize: 16,
                                                      // textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 500,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  ListTile(
                                                    title: Text('American'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('BBQ'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Beverages'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Biryani'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Burgers'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Chinese'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Continental'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Desserts'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Fast Food'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Halwa Puri'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Healthy Food'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Ice Cream'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Karahi and Handi'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Middle Eastern'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Nihari'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('PAkistani'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Paratha'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Pasta'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Pizza'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Pulao'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Qeema'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Samosa'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Sanwiches'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Savouries'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Seafood'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Shakes'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Shawarma'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Thai'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Western'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text('Wraps & Rolls'),
                                                    trailing: Icon(
                                                      Icons.check_box_outline_blank,
                                                      color: Colors.pink,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Divider(),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width:330,
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
                                          ),
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
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        child: Wrap(
                          children: [
                            Text("Prices",
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
                                                'Price',
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
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
                                                  Text('\$',
                                                      style: TextStyle(
                                                          fontSize: 14, color: Colors.black)),
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
                                                  )),
                                            ),
                                            SizedBox(width: 10,),
                                            ElevatedButton(
                                              child: Wrap(
                                                children: [
                                                  Text('\$\$',
                                                      style: TextStyle(
                                                          fontSize: 14, color: Colors.black)),
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
                                                  )),
                                            ),
                                            SizedBox(width: 10,),
                                            ElevatedButton(
                                              child: Wrap(
                                                children: [
                                                  Text('\$\$\$',
                                                      style: TextStyle(
                                                          fontSize: 14, color: Colors.black)),
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
                                                  )),
                                            ),
                                          ],
                                        ),
                                        Divider(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width:330,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            surfaceTintColor: Colors.white,
                            side: BorderSide(width: 0.2, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            textStyle: TextStyle(
                                // fontWeight: FontWeight.bold,
                                )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        child: Wrap(
                          children: [
                            Text("More",
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
                                                'More',
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              // color: Colors.pinkAccent,
                                              height: 35,
                                              width: 300,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 16.0),
                                              decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius:
                                                BorderRadius.circular(40.0),
                                              ),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                  EdgeInsets.all(9),
                                                  hintText:
                                                  'Search for shops & resturant',
                                                  border: InputBorder.none,
                                                  prefixIcon: Icon(
                                                    CupertinoIcons.search,
                                                    color: Colors.black12
                                                        .withOpacity(0.4),
                                                  ),
                                                  hintStyle: TextStyle(
                                                    color: Colors.black12
                                                        .withOpacity(0.4),
                                                    fontSize: 16,
                                                    // textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 500,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text('Casual'),
                                                  trailing: Icon(
                                                    Icons.check_box_outline_blank,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text('Dine-in Prices'),
                                                  trailing: Icon(
                                                    Icons.check_box_outline_blank,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width:330,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            surfaceTintColor: Colors.white,
                            side: BorderSide(width: 0.2, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            textStyle: TextStyle(
                                // fontWeight: FontWeight.bold,
                                )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Card(
                      elevation: 0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Border radius
                                child: Image.asset(
                                  'assets/images/shell.jpeg',
                                  height: 158,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Shell',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '20 mins',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 5,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 8, top: 8, bottom: 0, left: 15),
                  child: Row(
                    children: [
                      Text(
                        'Your favourite cuisines',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 135,
                  child: Card(
                    elevation: 0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Border radius
                                child: Image.asset(
                                  'assets/images/grocery.jpg',
                                  height: 90,
                                  width: 90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text('Store')
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 0,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 8, top: 8, bottom: 0, left: 15),
                  child: Row(
                    children: [
                      Text(
                        'All Resturants',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                      // scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: MediaQuery.of(context)
                                    .size
                                    .width, // Width and height are the same to make it a perfect circle
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Border radius
                                      child: Image.asset(
                                        'assets/images/biryani.jpg',
                                        height: 150,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left:
                                          10, // Adjust the left position as needed
                                      bottom:
                                          10, // Adjust the bottom position as needed
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            '20 min',
                                            style: TextStyle(
                                                color: Colors
                                                    .black, // Adjust text color
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Master Biryani-Gulshan Market',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Text(
                                    '4.0',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    '(5000+)',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Biryani, Wraps & Rolls, Pulao',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'PKR 0 delivery fee',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
