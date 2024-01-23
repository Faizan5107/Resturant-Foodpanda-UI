import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturant/Screens/Home/Home_screen.dart';
import 'package:resturant/Screens/cart.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  TabController? tabController;
  ScrollController _sController = ScrollController();

  List<GlobalKey> _key = [];
  int previousI = 0;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 6);

    for (int i = 0; i < 6; ++i) {
      _key.add(GlobalKey());
    }
    setState(() {});
    _sController = ScrollController();
    _sController.addListener(_scrollListener);

    super.initState();
  }
  _scrollListener() {
    for (int i = 0; i < 6; i++) {
      if (_key[i].currentContext != null) {
        RenderBox box = _key[i].currentContext!.findRenderObject() as RenderBox;
        Offset position = box.localToGlobal(Offset.zero); //this is global position
        double y = position.dy;
        if (y > 0 && y <= 150) {
          tabController!.index = i;
        }
        setState(() {
          previousI = i;
        });
      }
      //add key to your widget, which position you need to find
      // RenderBox box = _key[i].currentContext.findRenderObject();
      // Offset position = box.localToGlobal(Offset.zero); //this is global position
      // double y = position.dy; //this is y - I think it's what you want
      //
      // print("key $i y position: " + y.toString());
      //
      // if(y < _wCenterTop && y > _wCenterBottom) print("key $i center: " + y.toString());
    }
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        scrolledUnderElevation:0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.pink,
          ),
          onPressed: () {
            // Navigate to the menu screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.share_sharp,
                  color: Colors.pink,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search,
                  color: Colors.pink,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Container(
            child: CustomScrollView(
              controller: _sController,
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Master Biryani-Gulshan Market',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, top: 8, bottom: 5, right: 8),
                        child: Row(
                          children: [
                            Text(
                              '0.8km away | ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Free Delivery',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'More Info',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Text(
                              'Rs.249.00 Minimum | Rs.7.99 Service Fee',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.2',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '5000+ ratings',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'See reviews',
                              style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Delivery: 15 min',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Change',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                  ]),
                ),
                // SliverPersistentHeader(
                //   pinned: true,
                //   delegate: MyHeaderDelegate(),
                // ),
                SliverAppBar(
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  title: TabBar(
                  controller: tabController,
                  labelStyle: TextStyle(
                    color: Colors.pink,
                  ),
                  indicatorColor: Colors.pink,
                  isScrollable: true,
                  labelColor: Colors.pink,
                  tabs: [
                    InkWell(
                      onTap: (){
                        navigateToChild(0);
                      },
                      child: Tab(
                        text: "Desi",
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        navigateToChild(1);
                      },
                      child: Tab(
                        text: "Cuisine",
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        navigateToChild(2);
                      },
                      child: Tab(
                        text: "Desserts",
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        navigateToChild(3);
                      },
                      child: Tab(
                        text: "Beverages",
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        navigateToChild(4);
                      },
                      child: Tab(
                        text: "Chinese",
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        navigateToChild(5);
                      },
                      child: Tab(
                        text: "Extra",
                      ),
                    ),
                  ],
                  ),
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      key: _key[0],
                                      children: [
                                        Text('Desi',style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        )),
                                        Text(
                                          'Delicios Tortila bread with tender chicken breast and asublime sauce',
                                        ),
                                        Container(
                                          child: ListView.separated(
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: 5,
                                            shrinkWrap: true,
                                            itemBuilder: (BuildContext context, int index) {
                                              return InkWell(
                                                onTap: (){
                                                  showModalBottomSheet(
                                                      isScrollControlled:true,
                                                      context: context,
                                                      builder:(BuildContext context) {
                                                        return Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                BorderRadius.only(
                                                                    topRight: Radius.circular(24),
                                                                topLeft: Radius.circular(24),), // Border radius
                                                                child: Image.asset(
                                                                  'assets/images/tortilla.jpg',
                                                                  height: 200,
                                                                  width: 400,
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          child: Text('Tortila Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),),
                                                                        ),
                                                                        Spacer(),
                                                                        Container(
                                                                          child:Column(
                                                                        children: [
                                                                          Text('Rs. 410.00',
                                                                          style: TextStyle(
                                                                            fontSize: 15,
                                                                            decoration: TextDecoration.lineThrough,
                                                                          ),),
                                                                          Text('Rs. 319.80',
                                                                            style: TextStyle(
                                                                              fontSize: 18,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),)
                                                                        ],
                                                                     ),
                                                                    ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          child: Text(
                                                                            'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            maxLines: 2,
                                                                          ),
                                                                          width: 340,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 10,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                        color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Cheese')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Chicken')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Cold drink')
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 23,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.add,
                                                                        color: Colors.pink,),
                                                                        SizedBox(width: 5,),
                                                                        Text('Add special instructions',
                                                                          style: TextStyle(
                                                                            color: Colors.pink,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 18,
                                                                          ),),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 20,),
                                                                    Divider(),
                                                                    Padding(
                                                                      padding: const EdgeInsets.all(8.0),
                                                                      child: Row(
                                                                        children: [
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.grey,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.minus,
                                                                                color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(width: 10,),
                                                                          Text('1',
                                                                          style: TextStyle(
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 18,
                                                                          ),),
                                                                          SizedBox(width: 10,),
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.pink,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.add,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Spacer(),
                                                                          // SizedBox(width: 30,),
                                                                          ElevatedButton(
                                                                            onPressed: () {
                                                                              Get.to(CartScreen());
                                                                            },
                                                                            style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.pink, // Background color
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(20.0), // Circular border radius
                                                                              ),
                                                                            ),
                                                                            child: Text(
                                                                              'Add to Cart',
                                                                              style: TextStyle(
                                                                                fontSize: 18.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      });
                                                },
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                'Special Tortilla Wrap',
                                                                style: TextStyle(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                child: Text(
                                                                  'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                  overflow:
                                                                  TextOverflow.ellipsis,
                                                                  maxLines: 2,
                                                                ),
                                                                width: 200,
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text('from Rs. 530.00'),
                                                                  SizedBox(
                                                                    width: 7,
                                                                  ),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                        color: Colors.grey[400],
                                                                        // border: Border.all(
                                                                        //   color: Colors.grey,
                                                                        //   width: 1
                                                                        // ),
                                                                        borderRadius:
                                                                        BorderRadius
                                                                            .circular(16)),
                                                                    // color: Colors.grey,
                                                                    child: Padding(
                                                                      padding:
                                                                      const EdgeInsets.all(
                                                                          2.0),
                                                                      child: Row(
                                                                        children: [
                                                                          Icon(
                                                                            Icons
                                                                                .local_fire_department_sharp,
                                                                            size: 14,
                                                                          ),
                                                                          Text(
                                                                            'Popular',
                                                                            style: TextStyle(
                                                                              fontWeight:
                                                                              FontWeight
                                                                                  .bold,
                                                                              fontSize: 14,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Stack(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                const EdgeInsets.all(8.0),
                                                                child: ClipRRect(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      10.0), // Border radius
                                                                  child: Image.asset(
                                                                    'assets/images/tortilla.jpg',
                                                                    height: 100,
                                                                    width: 110,
                                                                    fit: BoxFit.cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                right: 0,
                                                                bottom: 0,
                                                                child: Container(
                                                                  decoration: BoxDecoration(
                                                                    shape: BoxShape.circle,
                                                                    color: Colors.pink,
                                                                    //   border: Border.all(
                                                                    //     color: Colors.white, // Border color
                                                                    //     width: 2.0, // Border width
                                                                    // ),
                                                                  ),
                                                                  child: Icon(
                                                                    Icons.add,
                                                                    color: Colors.white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )
                                                      ]
                                                      )
                                             ] ),
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext context, int index) {
                                              return Divider(
                                                height: 20,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      key: _key[1],
                                      children: [
                                        Text('Cuisine',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                        ),
                                        Text(
                                          'Delicios Tortila bread with tender chicken breast and asublime sauce',
                                        ),
                                        Container(
                                          child: ListView.separated(
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: 5,
                                            shrinkWrap: true,
                                            itemBuilder: (BuildContext context, int index) {
                                              return InkWell(
                                                onTap: (){
                                                  showModalBottomSheet(
                                                      isScrollControlled:true,
                                                      context: context,
                                                      builder:(BuildContext context) {
                                                        return Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                BorderRadius.only(
                                                                  topRight: Radius.circular(24),
                                                                  topLeft: Radius.circular(24),), // Border radius
                                                                child: Image.asset(
                                                                  'assets/images/tortilla.jpg',
                                                                  height: 200,
                                                                  width: 400,
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          child: Text('Tortila Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),),
                                                                        ),
                                                                        Spacer(),
                                                                        Container(
                                                                          child:Column(
                                                                            children: [
                                                                              Text('Rs. 410.00',
                                                                                style: TextStyle(
                                                                                  fontSize: 15,
                                                                                  decoration: TextDecoration.lineThrough,
                                                                                ),),
                                                                              Text('Rs. 319.80',
                                                                                style: TextStyle(
                                                                                  fontSize: 18,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),)
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          child: Text(
                                                                            'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            maxLines: 2,
                                                                          ),
                                                                          width: 340,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 10,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Cheese')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Chicken')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Cold drink')
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 23,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.add,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 5,),
                                                                        Text('Add special instructions',
                                                                          style: TextStyle(
                                                                            color: Colors.pink,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 18,
                                                                          ),),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 20,),
                                                                    Divider(),
                                                                    Padding(
                                                                      padding: const EdgeInsets.all(8.0),
                                                                      child: Row(
                                                                        children: [
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.grey,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.minus,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(width: 10,),
                                                                          Text('1',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 18,
                                                                            ),),
                                                                          SizedBox(width: 10,),
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.pink,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.add,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Spacer(),
                                                                          // SizedBox(width: 30,),
                                                                          ElevatedButton(
                                                                            onPressed: () {
                                                                              Get.to(CartScreen());
                                                                            },
                                                                            style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.pink, // Background color
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(20.0), // Circular border radius
                                                                              ),
                                                                            ),
                                                                            child: Text(
                                                                              'Add to Cart',
                                                                              style: TextStyle(
                                                                                fontSize: 18.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      });
                                                },
                                                child: Column(
                                                    children: [
                                                      Row(
                                                          children: [
                                                            Column(
                                                              children: [
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      child: Column(
                                                                        crossAxisAlignment:
                                                                        CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Special Tortilla Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 15,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            child: Text(
                                                                              'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                              overflow:
                                                                              TextOverflow.ellipsis,
                                                                              maxLines: 2,
                                                                            ),
                                                                            width: 200,
                                                                          ),
                                                                          SizedBox(
                                                                            height: 10,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text('from Rs. 530.00'),
                                                                              SizedBox(
                                                                                width: 7,
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                    color: Colors.grey[400],
                                                                                    // border: Border.all(
                                                                                    //   color: Colors.grey,
                                                                                    //   width: 1
                                                                                    // ),
                                                                                    borderRadius:
                                                                                    BorderRadius
                                                                                        .circular(16)),
                                                                                // color: Colors.grey,
                                                                                child: Padding(
                                                                                  padding:
                                                                                  const EdgeInsets.all(
                                                                                      2.0),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons
                                                                                            .local_fire_department_sharp,
                                                                                        size: 14,
                                                                                      ),
                                                                                      Text(
                                                                                        'Popular',
                                                                                        style: TextStyle(
                                                                                          fontWeight:
                                                                                          FontWeight
                                                                                              .bold,
                                                                                          fontSize: 14,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      child: Stack(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                            const EdgeInsets.all(8.0),
                                                                            child: ClipRRect(
                                                                              borderRadius:
                                                                              BorderRadius.circular(
                                                                                  10.0), // Border radius
                                                                              child: Image.asset(
                                                                                'assets/images/tortilla.jpg',
                                                                                height: 100,
                                                                                width: 110,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            right: 0,
                                                                            bottom: 0,
                                                                            child: Container(
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                                color: Colors.pink,
                                                                                //   border: Border.all(
                                                                                //     color: Colors.white, // Border color
                                                                                //     width: 2.0, // Border width
                                                                                // ),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.add,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            )
                                                          ]
                                                      )
                                                    ] ),
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext context, int index) {
                                              return Divider(
                                                height: 20,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      key: _key[2],
                                      children: [
                                        Text('Desserts',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                        Text(
                                          'Delicios Tortila bread with tender chicken breast and asublime sauce',
                                        ),
                                        Container(
                                          child: ListView.separated(
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: 5,
                                            shrinkWrap: true,
                                            itemBuilder: (BuildContext context, int index) {
                                              return InkWell(
                                                onTap: (){
                                                  showModalBottomSheet(
                                                      isScrollControlled:true,
                                                      context: context,
                                                      builder:(BuildContext context) {
                                                        return Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                BorderRadius.only(
                                                                  topRight: Radius.circular(24),
                                                                  topLeft: Radius.circular(24),), // Border radius
                                                                child: Image.asset(
                                                                  'assets/images/tortilla.jpg',
                                                                  height: 200,
                                                                  width: 400,
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          child: Text('Tortila Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),),
                                                                        ),
                                                                        Spacer(),
                                                                        Container(
                                                                          child:Column(
                                                                            children: [
                                                                              Text('Rs. 410.00',
                                                                                style: TextStyle(
                                                                                  fontSize: 15,
                                                                                  decoration: TextDecoration.lineThrough,
                                                                                ),),
                                                                              Text('Rs. 319.80',
                                                                                style: TextStyle(
                                                                                  fontSize: 18,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),)
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          child: Text(
                                                                            'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            maxLines: 2,
                                                                          ),
                                                                          width: 340,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 10,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Cheese')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Chicken')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Cold drink')
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 23,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.add,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 5,),
                                                                        Text('Add special instructions',
                                                                          style: TextStyle(
                                                                            color: Colors.pink,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 18,
                                                                          ),),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 20,),
                                                                    Divider(),
                                                                    Padding(
                                                                      padding: const EdgeInsets.all(8.0),
                                                                      child: Row(
                                                                        children: [
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.grey,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.minus,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(width: 10,),
                                                                          Text('1',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 18,
                                                                            ),),
                                                                          SizedBox(width: 10,),
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.pink,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.add,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Spacer(),
                                                                          // SizedBox(width: 30,),
                                                                          ElevatedButton(
                                                                            onPressed: () {
                                                                              Get.to(CartScreen());
                                                                            },
                                                                            style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.pink, // Background color
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(20.0), // Circular border radius
                                                                              ),
                                                                            ),
                                                                            child: Text(
                                                                              'Add to Cart',
                                                                              style: TextStyle(
                                                                                fontSize: 18.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      });
                                                },
                                                child: Column(
                                                    children: [
                                                      Row(
                                                          children: [
                                                            Column(
                                                              children: [
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      child: Column(
                                                                        crossAxisAlignment:
                                                                        CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Special Tortilla Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 15,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            child: Text(
                                                                              'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                              overflow:
                                                                              TextOverflow.ellipsis,
                                                                              maxLines: 2,
                                                                            ),
                                                                            width: 200,
                                                                          ),
                                                                          SizedBox(
                                                                            height: 10,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text('from Rs. 530.00'),
                                                                              SizedBox(
                                                                                width: 7,
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                    color: Colors.grey[400],
                                                                                    // border: Border.all(
                                                                                    //   color: Colors.grey,
                                                                                    //   width: 1
                                                                                    // ),
                                                                                    borderRadius:
                                                                                    BorderRadius
                                                                                        .circular(16)),
                                                                                // color: Colors.grey,
                                                                                child: Padding(
                                                                                  padding:
                                                                                  const EdgeInsets.all(
                                                                                      2.0),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons
                                                                                            .local_fire_department_sharp,
                                                                                        size: 14,
                                                                                      ),
                                                                                      Text(
                                                                                        'Popular',
                                                                                        style: TextStyle(
                                                                                          fontWeight:
                                                                                          FontWeight
                                                                                              .bold,
                                                                                          fontSize: 14,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      child: Stack(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                            const EdgeInsets.all(8.0),
                                                                            child: ClipRRect(
                                                                              borderRadius:
                                                                              BorderRadius.circular(
                                                                                  10.0), // Border radius
                                                                              child: Image.asset(
                                                                                'assets/images/tortilla.jpg',
                                                                                height: 100,
                                                                                width: 110,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            right: 0,
                                                                            bottom: 0,
                                                                            child: Container(
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                                color: Colors.pink,
                                                                                //   border: Border.all(
                                                                                //     color: Colors.white, // Border color
                                                                                //     width: 2.0, // Border width
                                                                                // ),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.add,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            )
                                                          ]
                                                      )
                                                    ] ),
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext context, int index) {
                                              return Divider(
                                                height: 20,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      key: _key[3],
                                      children: [
                                        Text('Beverages',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                        Text(
                                          'Delicios Tortila bread with tender chicken breast and asublime sauce',
                                        ),
                                        Container(
                                          child: ListView.separated(
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: 5,
                                            shrinkWrap: true,
                                            itemBuilder: (BuildContext context, int index) {
                                              return InkWell(
                                                onTap: (){
                                                  showModalBottomSheet(
                                                      isScrollControlled:true,
                                                      context: context,
                                                      builder:(BuildContext context) {
                                                        return Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                BorderRadius.only(
                                                                  topRight: Radius.circular(24),
                                                                  topLeft: Radius.circular(24),), // Border radius
                                                                child: Image.asset(
                                                                  'assets/images/tortilla.jpg',
                                                                  height: 200,
                                                                  width: 400,
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          child: Text('Tortila Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),),
                                                                        ),
                                                                        Spacer(),
                                                                        Container(
                                                                          child:Column(
                                                                            children: [
                                                                              Text('Rs. 410.00',
                                                                                style: TextStyle(
                                                                                  fontSize: 15,
                                                                                  decoration: TextDecoration.lineThrough,
                                                                                ),),
                                                                              Text('Rs. 319.80',
                                                                                style: TextStyle(
                                                                                  fontSize: 18,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),)
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          child: Text(
                                                                            'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            maxLines: 2,
                                                                          ),
                                                                          width: 340,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 10,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Cheese')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Chicken')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Cold drink')
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 23,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.add,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 5,),
                                                                        Text('Add special instructions',
                                                                          style: TextStyle(
                                                                            color: Colors.pink,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 18,
                                                                          ),),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 20,),
                                                                    Divider(),
                                                                    Padding(
                                                                      padding: const EdgeInsets.all(8.0),
                                                                      child: Row(
                                                                        children: [
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.grey,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.minus,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(width: 10,),
                                                                          Text('1',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 18,
                                                                            ),),
                                                                          SizedBox(width: 10,),
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.pink,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.add,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Spacer(),
                                                                          // SizedBox(width: 30,),
                                                                          ElevatedButton(
                                                                            onPressed: () {
                                                                              Get.to(CartScreen());
                                                                            },
                                                                            style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.pink, // Background color
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(20.0), // Circular border radius
                                                                              ),
                                                                            ),
                                                                            child: Text(
                                                                              'Add to Cart',
                                                                              style: TextStyle(
                                                                                fontSize: 18.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      });
                                                },
                                                child: Column(
                                                    children: [
                                                      Row(
                                                          children: [
                                                            Column(
                                                              children: [
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      child: Column(
                                                                        crossAxisAlignment:
                                                                        CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Special Tortilla Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 15,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            child: Text(
                                                                              'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                              overflow:
                                                                              TextOverflow.ellipsis,
                                                                              maxLines: 2,
                                                                            ),
                                                                            width: 200,
                                                                          ),
                                                                          SizedBox(
                                                                            height: 10,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text('from Rs. 530.00'),
                                                                              SizedBox(
                                                                                width: 7,
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                    color: Colors.grey[400],
                                                                                    // border: Border.all(
                                                                                    //   color: Colors.grey,
                                                                                    //   width: 1
                                                                                    // ),
                                                                                    borderRadius:
                                                                                    BorderRadius
                                                                                        .circular(16)),
                                                                                // color: Colors.grey,
                                                                                child: Padding(
                                                                                  padding:
                                                                                  const EdgeInsets.all(
                                                                                      2.0),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons
                                                                                            .local_fire_department_sharp,
                                                                                        size: 14,
                                                                                      ),
                                                                                      Text(
                                                                                        'Popular',
                                                                                        style: TextStyle(
                                                                                          fontWeight:
                                                                                          FontWeight
                                                                                              .bold,
                                                                                          fontSize: 14,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      child: Stack(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                            const EdgeInsets.all(8.0),
                                                                            child: ClipRRect(
                                                                              borderRadius:
                                                                              BorderRadius.circular(
                                                                                  10.0), // Border radius
                                                                              child: Image.asset(
                                                                                'assets/images/tortilla.jpg',
                                                                                height: 100,
                                                                                width: 110,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            right: 0,
                                                                            bottom: 0,
                                                                            child: Container(
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                                color: Colors.pink,
                                                                                //   border: Border.all(
                                                                                //     color: Colors.white, // Border color
                                                                                //     width: 2.0, // Border width
                                                                                // ),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.add,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            )
                                                          ]
                                                      )
                                                    ] ),
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext context, int index) {
                                              return Divider(
                                                height: 20,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      key: _key[4],
                                      children: [
                                        Text('Chinese',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                        Text(
                                          'Delicios Tortila bread with tender chicken breast and asublime sauce',
                                        ),
                                        Container(
                                          child: ListView.separated(
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: 5,
                                            shrinkWrap: true,
                                            itemBuilder: (BuildContext context, int index) {
                                              return InkWell(
                                                onTap: (){
                                                  showModalBottomSheet(
                                                      isScrollControlled:true,
                                                      context: context,
                                                      builder:(BuildContext context) {
                                                        return Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                BorderRadius.only(
                                                                  topRight: Radius.circular(24),
                                                                  topLeft: Radius.circular(24),), // Border radius
                                                                child: Image.asset(
                                                                  'assets/images/tortilla.jpg',
                                                                  height: 200,
                                                                  width: 400,
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          child: Text('Tortila Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),),
                                                                        ),
                                                                        Spacer(),
                                                                        Container(
                                                                          child:Column(
                                                                            children: [
                                                                              Text('Rs. 410.00',
                                                                                style: TextStyle(
                                                                                  fontSize: 15,
                                                                                  decoration: TextDecoration.lineThrough,
                                                                                ),),
                                                                              Text('Rs. 319.80',
                                                                                style: TextStyle(
                                                                                  fontSize: 18,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),)
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          child: Text(
                                                                            'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            maxLines: 2,
                                                                          ),
                                                                          width: 340,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 10,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Cheese')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Chicken')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Cold drink')
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 23,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.add,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 5,),
                                                                        Text('Add special instructions',
                                                                          style: TextStyle(
                                                                            color: Colors.pink,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 18,
                                                                          ),),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 20,),
                                                                    Divider(),
                                                                    Padding(
                                                                      padding: const EdgeInsets.all(8.0),
                                                                      child: Row(
                                                                        children: [
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.grey,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.minus,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(width: 10,),
                                                                          Text('1',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 18,
                                                                            ),),
                                                                          SizedBox(width: 10,),
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.pink,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.add,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Spacer(),
                                                                          // SizedBox(width: 30,),
                                                                          ElevatedButton(
                                                                            onPressed: () {
                                                                              Get.to(CartScreen());
                                                                            },
                                                                            style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.pink, // Background color
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(20.0), // Circular border radius
                                                                              ),
                                                                            ),
                                                                            child: Text(
                                                                              'Add to Cart',
                                                                              style: TextStyle(
                                                                                fontSize: 18.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      });
                                                },
                                                child: Column(
                                                    children: [
                                                      Row(
                                                          children: [
                                                            Column(
                                                              children: [
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      child: Column(
                                                                        crossAxisAlignment:
                                                                        CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Special Tortilla Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 15,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            child: Text(
                                                                              'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                              overflow:
                                                                              TextOverflow.ellipsis,
                                                                              maxLines: 2,
                                                                            ),
                                                                            width: 200,
                                                                          ),
                                                                          SizedBox(
                                                                            height: 10,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text('from Rs. 530.00'),
                                                                              SizedBox(
                                                                                width: 7,
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                    color: Colors.grey[400],
                                                                                    // border: Border.all(
                                                                                    //   color: Colors.grey,
                                                                                    //   width: 1
                                                                                    // ),
                                                                                    borderRadius:
                                                                                    BorderRadius
                                                                                        .circular(16)),
                                                                                // color: Colors.grey,
                                                                                child: Padding(
                                                                                  padding:
                                                                                  const EdgeInsets.all(
                                                                                      2.0),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons
                                                                                            .local_fire_department_sharp,
                                                                                        size: 14,
                                                                                      ),
                                                                                      Text(
                                                                                        'Popular',
                                                                                        style: TextStyle(
                                                                                          fontWeight:
                                                                                          FontWeight
                                                                                              .bold,
                                                                                          fontSize: 14,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      child: Stack(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                            const EdgeInsets.all(8.0),
                                                                            child: ClipRRect(
                                                                              borderRadius:
                                                                              BorderRadius.circular(
                                                                                  10.0), // Border radius
                                                                              child: Image.asset(
                                                                                'assets/images/tortilla.jpg',
                                                                                height: 100,
                                                                                width: 110,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            right: 0,
                                                                            bottom: 0,
                                                                            child: Container(
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                                color: Colors.pink,
                                                                                //   border: Border.all(
                                                                                //     color: Colors.white, // Border color
                                                                                //     width: 2.0, // Border width
                                                                                // ),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.add,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            )
                                                          ]
                                                      )
                                                    ] ),
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext context, int index) {
                                              return Divider(
                                                height: 20,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      key: _key[5],
                                      children: [
                                        Text('Extra',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                        Text(
                                          'Delicios Tortila bread with tender chicken breast and asublime sauce',
                                        ),
                                        Container(
                                          child: ListView.separated(
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: 5,
                                            shrinkWrap: true,
                                            itemBuilder: (BuildContext context, int index) {
                                              return InkWell(
                                                onTap: (){
                                                  showModalBottomSheet(
                                                      isScrollControlled:true,
                                                      context: context,
                                                      builder:(BuildContext context) {
                                                        return Container(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                BorderRadius.only(
                                                                  topRight: Radius.circular(24),
                                                                  topLeft: Radius.circular(24),), // Border radius
                                                                child: Image.asset(
                                                                  'assets/images/tortilla.jpg',
                                                                  height: 200,
                                                                  width: 400,
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          child: Text('Tortila Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),),
                                                                        ),
                                                                        Spacer(),
                                                                        Container(
                                                                          child:Column(
                                                                            children: [
                                                                              Text('Rs. 410.00',
                                                                                style: TextStyle(
                                                                                  fontSize: 15,
                                                                                  decoration: TextDecoration.lineThrough,
                                                                                ),),
                                                                              Text('Rs. 319.80',
                                                                                style: TextStyle(
                                                                                  fontSize: 18,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),)
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          child: Text(
                                                                            'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            maxLines: 2,
                                                                          ),
                                                                          width: 340,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 10,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Cheese')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Extra Chicken')
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.check_box_outlined,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 10,),
                                                                        Text('Cold drink')
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 23,),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.add,
                                                                          color: Colors.pink,),
                                                                        SizedBox(width: 5,),
                                                                        Text('Add special instructions',
                                                                          style: TextStyle(
                                                                            color: Colors.pink,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 18,
                                                                          ),),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 20,),
                                                                    Divider(),
                                                                    Padding(
                                                                      padding: const EdgeInsets.all(8.0),
                                                                      child: Row(
                                                                        children: [
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.grey,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.minus,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(width: 10,),
                                                                          Text('1',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 18,
                                                                            ),),
                                                                          SizedBox(width: 10,),
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              // borderRadius: BorderRadius.circular(10),
                                                                              color: Colors.pink,
                                                                            ),
                                                                            child: Column(
                                                                              children: [
                                                                                Icon(CupertinoIcons.add,
                                                                                  color: Colors.white,),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Spacer(),
                                                                          // SizedBox(width: 30,),
                                                                          ElevatedButton(
                                                                            onPressed: () {
                                                                              Get.to(CartScreen());
                                                                            },
                                                                            style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.pink, // Background color
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(20.0), // Circular border radius
                                                                              ),
                                                                            ),
                                                                            child: Text(
                                                                              'Add to Cart',
                                                                              style: TextStyle(
                                                                                fontSize: 18.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      });
                                                },
                                                child: Column(
                                                    children: [
                                                      Row(
                                                          children: [
                                                            Column(
                                                              children: [
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      child: Column(
                                                                        crossAxisAlignment:
                                                                        CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Special Tortilla Wrap',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 15,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            child: Text(
                                                                              'Tendered chicken breast fillet in a tortilla bread and chipotle sause to fulfill your craving',
                                                                              overflow:
                                                                              TextOverflow.ellipsis,
                                                                              maxLines: 2,
                                                                            ),
                                                                            width: 200,
                                                                          ),
                                                                          SizedBox(
                                                                            height: 10,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text('from Rs. 530.00'),
                                                                              SizedBox(
                                                                                width: 7,
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                    color: Colors.grey[400],
                                                                                    // border: Border.all(
                                                                                    //   color: Colors.grey,
                                                                                    //   width: 1
                                                                                    // ),
                                                                                    borderRadius:
                                                                                    BorderRadius
                                                                                        .circular(16)),
                                                                                // color: Colors.grey,
                                                                                child: Padding(
                                                                                  padding:
                                                                                  const EdgeInsets.all(
                                                                                      2.0),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons
                                                                                            .local_fire_department_sharp,
                                                                                        size: 14,
                                                                                      ),
                                                                                      Text(
                                                                                        'Popular',
                                                                                        style: TextStyle(
                                                                                          fontWeight:
                                                                                          FontWeight
                                                                                              .bold,
                                                                                          fontSize: 14,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      child: Stack(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                            const EdgeInsets.all(8.0),
                                                                            child: ClipRRect(
                                                                              borderRadius:
                                                                              BorderRadius.circular(
                                                                                  10.0), // Border radius
                                                                              child: Image.asset(
                                                                                'assets/images/tortilla.jpg',
                                                                                height: 100,
                                                                                width: 110,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            right: 0,
                                                                            bottom: 0,
                                                                            child: Container(
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                                color: Colors.pink,
                                                                                //   border: Border.all(
                                                                                //     color: Colors.white, // Border color
                                                                                //     width: 2.0, // Border width
                                                                                // ),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.add,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            )
                                                          ]
                                                      )
                                                    ] ),
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext context, int index) {
                                              return Divider(
                                                height: 20,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  navigateToChild(i){
    double firstHead = 180;
    double height = 0;
    if(previousI == i){
      print(i);
      return;
    }
    if(i != 0){
      print(_key.length);
      // if(i > previousI){
        for(int ii = 0; ii < i; ++ii){
          RenderBox box = _key[i - ii].currentContext!.findRenderObject() as RenderBox;
          height += box.size.height;
        }
    }
    _sController.jumpTo(height + firstHead);

    tabController!.index = i;
    setState(() {
      previousI = i;
    });

  }

}


class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Text('ssssssssssssssr');
    // TODO: implement build
    // throw UnimplementedError();
  }


  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 150;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}