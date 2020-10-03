import 'package:flutter/material.dart';

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
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
            Expanded(
              flex: 4,
              child:Column(
                children: [
                  TileCake(
                    text: 'Cake News',
                  ),
                  ListCakeHorizontal()
                ],
              )
            ),
            Expanded(
              flex: 5,
              child:Column(
                children: [
                  TileCake(
                    text: 'Cake is bought a lot',
                  ),
                  ListCakeVertical(),                   
                ],
              )
            ),
            ]
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

class ListCakeHorizontal extends StatelessWidget {

  /// Here is your constructor
  ListCakeHorizontal({Key key});

  @override
  Widget build(BuildContext context) {
    return _buildListCakeHorizontal();
  }

  Widget _buildListCakeHorizontal() {
    return Expanded(
      child: ListView.builder(
        itemExtent: 170,
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) => Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: Text(
                      'New',
                      style: TextStyle(color: Colors.blue),
                    ),                  
                  ),
                ),
                Expanded(
                  child:Icon(
                    Icons.cake,
                    color: Colors.blue,
                    size: 60.0,
                  ),
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
              ],
            ),
        )
      ),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: Text(
                        'Hot',
                        style: TextStyle(color: Colors.blue),
                      ),                  
                    ),
                  ),
                  Icon(
                    Icons.cake,
                    color: Colors.blue,
                    size: 60.0,
                  ),
                  Text(
                    'Banana Cake \n 40 \$',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.blue
                      ),
                      Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
              ],
            ),
          ),
      )
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
          this.text,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
