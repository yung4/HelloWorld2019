import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'herro world 2019',
      home: new myApp(),
    ),
  );
}

//class MyApp extends StatefulWidget {
//  @override
//  _State createState() => new _State();
//}

class myApp extends StatelessWidget {

  bool value1 = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('i am confusion'),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            Text('CHILD 1'),
            Text('CHILD 2'),
            Text('CHILD 4'),
          ],
        ),
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
                    color: Colors.deepPurpleAccent,
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
                onChanged: (bool value){

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
