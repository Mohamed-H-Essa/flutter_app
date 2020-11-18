import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  // WidgetsApp //MaterialApp //CupertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Column(
            children: [Text("Business Card")],
          )),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                height: 170,
                clipBehavior: Clip.none,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 9.5,
                        spreadRadius: 0.1),
                  ],
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://avatars3.githubusercontent.com/u/65831561?s=400&u=815946f814a87364ced49e57453d19912537188f&v=4')),
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                'Muhammed Hosny',
                style: GoogleFonts.pacifico(
                    color: Colors.white, textStyle: TextStyle(fontSize: 35)),
              ),
              Padding(padding: EdgeInsets.all(0)),
              Text('flutter developer (isA)', style: GoogleFonts.raleway()),
              Padding(padding: EdgeInsets.all(5)),
              Divider(
                color: Colors.green[400],
                thickness: 2.5,
                endIndent: 135,
                indent: 135,
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.phone),
                        Padding(padding: EdgeInsets.all(15)),
                        Icon(Icons.email)
                      ],
                    ),
                    Column(
                      children: [
                        Text('+20 100 539 7776'),
                        Padding(padding: EdgeInsets.all(15)),
                        Text('mhosny67710@gmail.com')
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Muhammed Hosny'),
                accountEmail: Text('mhonsny67710@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars3.githubusercontent.com/u/65831561?s=400&u=815946f814a87364ced49e57453d19912537188f&v=4'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('muhammed hosny'),
                subtitle: Text('flutter developer'),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('mhosny67710@gmail.com'),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('whatsapp'),
                subtitle: Text('+20 100 539 7776'),
                trailing: Icon(Icons.edit),
              ),
            ],
          ),
        ),
      ),
      theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.green[200]),
    );
  }
}
