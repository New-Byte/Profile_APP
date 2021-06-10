import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp1() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);

  myprint() {
    Fluttertoast.showToast(
        msg: "Prasad Joshi",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  email() {
    Fluttertoast.showToast(
        msg: "E-mail sent successfully!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  call() {
    Fluttertoast.showToast(
        msg: "Connected via voice call successfully!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade200,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          // padding: EdgeInsets.all(30),
          // padding: EdgeInsets.only(left: 70),
          alignment: Alignment.center,
          width: 350,
          height: 200,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Prasad Joshi',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text('  PrasadJoshi@flutter.com'),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          // onTap: myprint,
          onDoubleTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://github.com/New-Byte/flutter/blob/master/prasad.jpg?raw=true'),
                fit: BoxFit.cover,
              ),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.amber,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.mail,
              color: Colors.black,
            ),
            onPressed: email,
          ),
          IconButton(
            icon: Icon(
              Icons.call,
              color: Colors.black,
            ),
            onPressed: call,
          ),
        ],
      ),
      body: mybody,
    ),
  );
}
