import 'package:flutter/material.dart';

class MyList extends StatefulWidget {

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('Mobile'),
        subtitle: Text('All Types Of mobiles available'),
        leading: Icon(Icons.face),
      );
     },
    );
  }
}