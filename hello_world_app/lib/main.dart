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
      body: Center(
        child: new Column(
          children: <Widget>[


          ],
        ),
      ),
      drawer: Drawer(
        child: Center (
          child: Column(
            children: <Widget>[

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

              Align(
                alignment: Alignment.bottomCenter,
                child:
                ListTile(
                  title: Text('hello'),
                  onTap: (){
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