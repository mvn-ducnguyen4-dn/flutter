import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String titleAppBar = 'Introduce Cake';
  static const String titleCakeNews = 'Cake News';
  static const String titleCakeIsBoughtALog = 'Cake is bought a lot';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            );
          }),
          centerTitle: true,
          title: const Text(titleAppBar),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(children: [
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    TileCake(
                      text: titleCakeNews,
                    ),
                    ListCakeHorizontal()
                  ],
                )),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    TileCake(
                      text: titleCakeIsBoughtALog,
                    ),
                    ListCakeVertical(),
                  ],
                )),
          ]),
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

class ListCakeHorizontal extends StatelessWidget {
  /// Here is your constructor
  ListCakeHorizontal({Key key});

  @override
  Widget build(BuildContext context) {
    return _buildListCakeHorizontal(context);
  }

  Widget _buildListCakeHorizontal(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemExtent: (MediaQuery.of(context).size.width - 20) / 2,
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) => Card(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 6,
                          child: Icon(
                            Icons.cake,
                            color: Colors.blue,
                            size: 70.0,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.blue,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Banana Cake \n 40 \$',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Text(
                        'New',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
    );
  }
}

class ListCakeVertical extends StatelessWidget {
  /// Here is your constructor
  ListCakeVertical({Key key});

  @override
  Widget build(BuildContext context) {
    return _buildListCakeVertical();
  }

  Widget _buildListCakeVertical() {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => Card(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 6,
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.cake,
                              color: Colors.blue,
                              size: 70.0,
                            ),
                            Text(
                              'Banana Cake \n 40 \$',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.blue),
                            ),
                          ])),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                          width: 0.7,
                        ),
                      )),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart, color: Colors.blue),
                          Text(
                            'Add to cart',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Text(
                  'Hot',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TileCake extends StatelessWidget {
  final String text;

  /// Here is your constructor
  TileCake({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return _buildTitle(this.text);
  }

  Widget _buildTitle(String text) {
    return Container(
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
          text,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
