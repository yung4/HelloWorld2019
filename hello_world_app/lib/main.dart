import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'herro world 2019',
      home: new myApp(),
    ),
  );
}

//class MyApp extends StatefulWidget {
//  @override
//  _State createState() => new _State();
//}

class myApp extends StatefulWidget {

  @override
  _State createState() => new _State();

}

class _State extends State<myApp>{
  bool value1 = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Best app'),
        backgroundColor: Colors.deepPurple[500],
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return new StuffInTiles(listOfTiles[index]);
        },
        itemCount: listOfTiles.length,
      ),
      drawer: Drawer(
        child: Center (
          child: Column(
            children: <Widget>[
              //Checkbox(value: value1,)
              Container(

                child: DrawerHeader(
                  child: Center(
                    child: Text(
                      "Select Media Sources", style: TextStyle(
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



              ListTile(
                title: Text('hello'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              CheckboxListTile(
                value: value2,
                onChanged: (bool value) {

                  setState(() {
                    value2 = value;
                  });


                },
                title: Text('我不知道'),
                subtitle: Text('我還是不知道'),
                //activeColor: Colors.red,
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

    return new ExpansionTile(
      key: new PageStorageKey<int>(3),
      title: new Text(t.title),
      children: t.children.map(_buildTiles).toList(),
    );
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