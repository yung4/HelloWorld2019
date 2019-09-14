import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'herro world 2019',
      home: new myApp(),
    ),
  );
}

class myApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}



class _State extends State<myApp> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool opened = false;
  String text = "";

  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Media Selector'),
        backgroundColor: Colors.deepPurple[500],
      ),
      body: WebView(
          initialUrl: 'https://reddit.com',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller){
            _controller.complete(controller);
          },
        ),



          /*

      Stack(

        children: <Widget>[

          ExpansionTile(
            title: Text('Reddit'),
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(text),
                ]
              ),
            ],
          ),





        ],

      ),

    */





      drawer: Drawer(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: DrawerHeader(
                  child: Center(
                    child: Text(
                      "Select Media Sources",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[500],
                  ),
                ),
              ),
              CheckboxListTile(
                value: value1,
                onChanged: (bool value) {
                  setState(() {
                    value1 = value;
                    redditToggle = value;
                  });
                },
                title: Text('Reddit'),
                //activeColor: Colors.red,
              ),
              CheckboxListTile(
                value: value2,
                onChanged: (bool value) {
                  setState(() {
                    value2 = value;
                    twitterToggle = value;
                  });
                },
                title: Text('Twitter'),
                //activeColor: Colors.red,
              ),
              CheckboxListTile(
                value: value3,
                onChanged: (bool value) {
                  setState(() {
                    value3 = value;
                    apnewsToggle = value;
                  });
                },
                title: Text('AP News'),

                //activeColor: Colors.red,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ListTile(
                  title: Text('hello'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.children.isEmpty)
      return new ListTile(
          dense: true,
          enabled: false,
          isThreeLine: false,
          selected: false,
          title: new Text(t.title));

    return Visibility(
      visible: getVisibility(t.title),
      child: new ExpansionTile(
        key: new PageStorageKey<int>(3),
        title: new Text(t.title),
        children: t.children.map(_buildTiles).toList(),
      ),
    );
  }
}

bool getVisibility(String title) {
  switch(title) {
    case "Reddit":
      return redditToggle;
    case "Twitter":
      return twitterToggle;
    default:
      return apnewsToggle;
  }
}

class MyTile {
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
  new MyTile(
    'Reddit',
    <MyTile>[
      new MyTile('link'),
      new MyTile('link'),
      new MyTile('link'),
      new MyTile('link'),
      new MyTile('link')
    ],
  ),
  new MyTile(
    'Twitter',
    <MyTile>[
      new MyTile('link'),
      new MyTile('link'),
      new MyTile('link'),
      new MyTile('link'),
      new MyTile('link')
    ],
  ),
  new MyTile(
    'AP News',
    <MyTile>[
      new MyTile('link'),
      new MyTile('link'),
      new MyTile('link'),
      new MyTile('link'),
      new MyTile('link')
    ],
  ),
];


bool redditToggle = false;
bool apnewsToggle = false;
bool twitterToggle = false;