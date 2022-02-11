import 'package:flutter/material.dart';
import 'package:preferences/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late SharedPreferences logindata;
  var email;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      // int i = 0;
      // String s = i;
      email = logindata.getString('email');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Home Page", style: TextStyle(color: Colors.white),),
        actions: [IconButton(
          onPressed: () { 
            logindata.setBool('login', true);
                Navigator.pushReplacement(context,
                    new MaterialPageRoute(builder: (context) => Login()));}, 
          icon: Icon(Icons.logout))],
      ),
      body: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(),
              title: Text("Rimsha"),
              subtitle: Text("Hello"),
              trailing: Text("9:30"),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Sheeza"),
              subtitle: Text("Hello"),
              trailing: Text("7:30"),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Maheen"),
              subtitle: Text("Hello"),
              trailing: Text("2:35"),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fatima"),
              subtitle: Text("Hello"),
              trailing: Text("5:55"),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Laiba"),
              subtitle: Text("Hello"),
              trailing: Text("4:00"),
            ),
          ],
      ),
    );
  }
}


