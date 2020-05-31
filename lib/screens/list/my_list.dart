import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Mobile'),
              subtitle: Text('All Types Of mobiles available'),
              leading: Icon(Icons.face),
              trailing: RaisedButton(
                child: Text('Remove'),
                onPressed: () {
                  deletedialog(context).then((value) {
                    print('Value is $value');
                  });
                },
              ),
            );
          },
        ),
      )),
    );
  }

  Future<bool> deletedialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are Yo Sure ?'),
            actions: <Widget>[
              FlatButton(
                child: Text('Yes'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
              FlatButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
            ],
          );
        });
  }
}
