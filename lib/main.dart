import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(mastercard());
}

class mastercard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master Card',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.brown,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgroun.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Stack(
                alignment: Alignment.center,
                children: [
                  new Container(
                    margin: EdgeInsets.only(right: 50.0),
                    height: 90.0,
                    width: 90.0,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(75.0),
                      color: Colors.red,
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(left: 50.0),
                    height: 90.0,
                    width: 90.0,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(75.0),
                      color: Colors.orangeAccent,
                    ),
                  ),
                  new Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(75.0),
                      color: Colors.lime,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'mastercard',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      width: 300,
                      height: 200,
                      padding: new EdgeInsets.all(5.0),
                      child: Card(
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.grey),
                        ),
                        color: Colors.transparent,
                        margin: EdgeInsets.all(5.0),
                        elevation: 15,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topRight,
                              // color: Colors.amber,
                              child: Text(
                                'TITANIUM',
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.white54)
                              ),
                            ),
                            SizedBox(height: 30.0),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Icon(
                                  Icons.article,
                                  size: 60,
                                  color: Colors.white54,
                                ),
                              ),
                            Container(
                              constraints: BoxConstraints.expand(height: 50),
                              alignment: Alignment.bottomRight,
                              // height: 70.0,
                              // width: 100.0,
                              child: Image.asset('images/mstr_card.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'TITANIUM',
                      style: TextStyle(
                          fontSize: 20.0, color: Colors.white54)
                  ),
                ], // color: Colors.amber,
              ),
              SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.orange),
        ),
                      child: Text('Select Card', style: TextStyle(fontSize: 20.0, color: Colors.white54),),
                    onPressed: () {/* ... */},
                    color: Colors.transparent,
                    padding: const EdgeInsets.fromLTRB(80.0, 10.0, 80.0, 10.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
