import 'package:FlutterECommerce/screens/list/my_list.dart';
import 'package:flutter/material.dart';
import 'package:FlutterECommerce/screens/list/first_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        backgroundColor: Colors.teal,
        // bottom: TabBar(
        // controller: controller,
        //   tabs: <Widget>[
        //     Tab(icon: Icon(Icons.timer),),
        //     Tab(icon: Icon(Icons.account_balance_wallet),)
        //   ],
        // ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              accountName: Text('Ankit Rama Yadav'),
              accountEmail: Text('ankitramayadav@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.face),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              title: Text('My List'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => MyList()));
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: Colors.teal,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.timer),
            ),
            Tab(
              icon: Icon(Icons.account_balance_wallet),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[FirstPage(), MyList()],
      ),
    );
  }
}
