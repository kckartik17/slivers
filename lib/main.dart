import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Icon(Icons.arrow_back),
            title: Text('Sliver Effect'),
            expandedHeight: 250.0,
            forceElevated: true,
            pinned: true,
            flexibleSpace: new FlexibleSpaceBar(
              background: Image.network('https://placeimg.com/500/320/any'),
            ),
          ),
          new SliverList(
            delegate: new SliverChildBuilderDelegate((context,index) => new Card(
              child: new Container(
                padding: EdgeInsets.all(10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
                    ),
                    SizedBox(width: 10.0),
                    Text('My name is Kartik Chauhan')
                  ],
                ),
              ),
            )
            ),
          )
        ],
      ),
     );
  }
}
