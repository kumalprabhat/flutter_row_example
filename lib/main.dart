import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Activitys'),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('johndoe@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child:
                Text(
                  'J',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Inbox',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.email),
            ),
            ListTile(
              title: Text('Primary',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Socoal',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: Text('Settings',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.settings),
            ),
            ListTile(
              title: Text('Logout',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
            ),
            child: Text("React.js",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
            ),
            child: Text('Flutter',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
            ),
            child: Text('MySQL',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}

