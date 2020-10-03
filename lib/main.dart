import 'package:flutter/material.dart';
// import 'package:big_tip/big_tip.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            );
          }),
          centerTitle: true,
          title: const Text('Introduce Cake'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body:
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //       Align(
            //         alignment: Alignment.topRight,
            //         child:Text(
            //           'New',
            //           style: TextStyle(color: Colors.blue),
            //         ),
            //       ),
            //       Icon(
            //         Icons.cake,
            //         color: Colors.blue,
            //         size: 80.0,
            //       ),
            //       Text(
            //         'Banana Cake \n 40 \$',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(color: Colors.blue),
            //       )
            //   ],
            // ),

            // Stack(
            //   children: [
            //     Container(
            //       child: Positioned(
            //         top: 20,
            //         right: 20,
            //         child: Text(
            //           'New',
            //           style: TextStyle(color: Colors.blue),
            //         ),
            //       )
            //     ),
            //     Container(
            //       padding: EdgeInsets.all(20.0),
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 1,
            //         ),
            //       ),

            //       child: Column(
            //         children: [
            //           Icon(
            //             Icons.cake,
            //             color: Colors.blue,
            //             size: 80.0,
            //           ),
            //           Container(
            //             margin: EdgeInsets.symmetric(vertical: 10.0),
            //             padding: EdgeInsets.symmetric(vertical: 10.0),
            //             color: Colors.blue,
            //             child: Row(
            //               children: [
            //                 Expanded(
            //                   child: Text('Banana Cake \n 40 \$',
            //                   textAlign: TextAlign.center,
            //                   style: TextStyle(color: Colors.white),
            //                 ),
            //                 )
            //               ],
            //             ),
            //           ),
            //         ]
            //       )
            //     ),
            //   ]
            // ),

            Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                )),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Cake News',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemExtent: 170,
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) => Card(
                    child: Stack(children: [
                      Container(
                          child: Positioned(
                        top: 10,
                        right: 10,
                        child: Text(
                          'New',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.cake,
                                  color: Colors.blue,
                                  size: 80.0,
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    color: Colors.blue,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Banana Cake \n 40 \$',
                                            textAlign: TextAlign.center,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ])),
                    ]),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                )),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Cake is bought a lot',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => Card(
                    child: Stack(children: [
                      Container(
                          child: Positioned(
                        top: 10,
                        right: 10,
                        child: Text(
                          'Hot',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.cake,
                                  color: Colors.blue,
                                  size: 80.0,
                                ),
                                Container(
                                  child: Text(
                                    'Banana Cake \n 40 \$',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.shopping_cart,
                                        color: Colors.blue),
                                    Text(
                                      'Add to cart',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ])),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // This is all you need!
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.cake),
                title: Text('My Cake'),
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contacts),
                title: Text('Contact'),
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                backgroundColor: Colors.blue,
              ),
            ]),
      ),
    );
  }
}
