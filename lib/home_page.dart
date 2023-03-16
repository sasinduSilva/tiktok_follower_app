import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'offer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Offer> offerList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (offerList.isEmpty) {
      setState(() {
        offerList = createOfferList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          drawer: Drawer(
            backgroundColor: Colors.grey[800],
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      border: Border(bottom:BorderSide(color: Colors.red) )
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child: Image.asset(
                                  'assets/pro_pic.jpg',
                                  fit:BoxFit.fill, width: 60, height: 60,)
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text('@Username', style: TextStyle(color: Colors.white),),
                            )
                          ],
                        ),

                    )

                ),
                ListTile(
                  leading: Icon(Icons.supervised_user_circle_sharp, color: Colors.white,),
                  title: Text('Real Followers', style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(Icons.favorite, color: Colors.white,),
                  title: Text('Special Offers', style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(Icons.tag, color: Colors.white,),
                  title: Text('HashTags Manager', style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(Icons.credit_card, color: Colors.white,),
                  title: Text('Payment History', style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.white,),
                  title: Text('Logout', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              TextButton.icon(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Boost',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.money_off,
                    color: Colors.white,
                  ),
                  text: 'Free Coins',
                ),
                Tab(
                  icon:
                      Icon(Icons.monetization_on_outlined, color: Colors.white),
                  text: 'Buy Coins',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Scaffold(
                  backgroundColor: Colors.black,
                  body: Container(
                    padding: EdgeInsets.all(5.0),
                    child: SingleChildScrollView(
                        child: Center(
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 25),
                              child: Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,

                                  // mainAxisAlignment: MainAxisAlignment.,

                                  children: [
                                    ListTile(
                                      tileColor: Colors.orange,
                                      leading: Icon(
                                        Icons.account_balance,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      title: Text(
                                        'Invite 5 friends and Get 10 Coins',
                                        style: TextStyle(
                                            textBaseline:
                                                TextBaseline.ideographic,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                        color: Colors.orange,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                child: Text(
                                                  'Get your Free Coins',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {},
                                                style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.red[400],

                                                  // foregroundColor: Colors.grey,

                                                  // elevation: 2
                                                )),
                                          ],
                                        ))
                                  ],
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.asset(
                                      'assets/pro_pic.jpg',
                                      width: 200,
                                      height: 200,
                                      scale: 3,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      '@username',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 35, vertical: 20),
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Column(
                                      children: [
                                        Text(
                                          '21',
                                          style: TextStyle(
                                              fontSize: 28,
                                              color: Colors.red[400]),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.currency_bitcoin_rounded,
                                                color: Colors.red,
                                              ),
                                            ),
                                            Container(
                                                child: Text(
                                              'Your coins',
                                              style: TextStyle(
                                                  color: Colors.red[400],
                                                  fontSize: 8),
                                            ))
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[900],
                                        borderRadius: BorderRadius.circular(10)
                                        // backgroundBlendMode: BlendMode.darken

                                        ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 20),
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Column(
                                      children: [
                                        Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 28, color: Colors.red),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.follow_the_signs_sharp,
                                              color: Colors.red,
                                            ),
                                            Text(
                                              'Gained Followers',
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 8,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[900],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  child: Text(
                                    'Follow and get 5 Coins',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.red[400],
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20)

                                      // foregroundColor: Colors.grey,

                                      // elevation: 2
                                      )),
                              TextButton.icon(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.grey[900],
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 10)),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Skip',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    child: Icon(
                                      Icons.celebration,
                                      size: 30,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    child: Text(
                                      'Today Special Offer',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 29),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    child: Icon(
                                      Icons.celebration,
                                      size: 30,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    color: Colors.grey[900],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: Text(
                                        '5000 Followers',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            'LKR 14,500.00',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.grey[600],
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                        TextButton(
                                            child: Text(
                                              'Buy Now',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.red[400],
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20)

                                                // foregroundColor: Colors.grey,

                                                // elevation: 2
                                                )),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                  )),
              Scaffold(
                  backgroundColor: Colors.black,
                  body: Center(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                          child: Text(
                            'Buy More Save More',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: offerList.length,
                                itemBuilder: (BuildContext context, index) {
                                  if (offerList.isNotEmpty) {
                                    return GestureDetector(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 15),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[900],
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  spreadRadius: 3,
                                                  color: Colors.black),
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      right: 10),
                                                  child: Icon(
                                                    Icons
                                                        .currency_exchange_outlined,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        '${offerList[index].coinCount}' +
                                                            ' Coins',
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '${offerList[index].saving}',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.grey),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(0),
                                                  child: Text(
                                                    'LKR ${offerList[index].price}.00',
                                                    style: TextStyle(
                                                        backgroundColor:
                                                            Colors.grey[600],
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(0),
                                                  margin: EdgeInsets.all(0),
                                                  child: TextButton(
                                                      child: Text(
                                                        'Buy Now',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      onPressed: () {},
                                                      style:
                                                          TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.red[400],
                                                        // padding: EdgeInsets.symmetric(horizontal: 20)

                                                        // foregroundColor: Colors.grey,

                                                        // elevation: 2
                                                      )),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      child: Center(
                                        child: Text('List is empty'),
                                      ),
                                    );
                                  }
                                }))
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  List<Offer> createOfferList() {
    List<Offer> tmpOfferList = [];
    for (var i = 0; i <= 7; i++) {
      if (i == 0) {
        tmpOfferList.add(new Offer(coinCount: 50, price: 200, saving: ''));
      } else if (i == 1) {
        tmpOfferList
            .add(new Offer(coinCount: 100, price: 375, saving: '(Save 10%)'));
      } else if (i == 3) {
        tmpOfferList
            .add(new Offer(coinCount: 500, price: 1700, saving: '(Save 20%)'));
      } else if (i == 4) {
        tmpOfferList
            .add(new Offer(coinCount: 1000, price: 2800, saving: '(Save 30%)'));
      } else if (i == 5) {
        tmpOfferList
            .add(new Offer(coinCount: 2000, price: 4800, saving: '(Save 40%)'));
      } else if (i == 6) {
        tmpOfferList
            .add(new Offer(coinCount: 5000, price: 9975, saving: '(Save 50%)'));
      } else if (i == 7) {
        tmpOfferList.add(
            new Offer(coinCount: 10000, price: 16000, saving: '(Save 60%)'));
      }
    }
    return tmpOfferList;
  }
}
