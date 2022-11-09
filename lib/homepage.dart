import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('navigation bar'),
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
          child: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/id/1285395672/photo/abstract-futuristic-with-connection-lines-on-blue-background-plexus-structure-concept-of.jpg?b=1&s=170667a&w=0&k=20&c=1h76NfBaW6kn8J2u54KT__rA9K-oX5LqUJxEYv-AcZo='))),
                  accountName: Text('Shimas'),
                  accountEmail: Text('muhammedshimas123@gmail.com'),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/photos/headshot-portrait-of-smiling-male-employee-in-office-picture-id1309328823?b=1&k=20&m=1309328823&s=170667a&w=0&h=a-f8vR5TDFnkMY5poQXfQhDSnK1iImIfgVTVpFZi_KU='),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Home', style: TextStyle(color: Colors.white)),
                  trailing: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  title: Text('About', style: TextStyle(color: Colors.white)),
                  trailing: Icon(Icons.details, color: Colors.white),
                ),
                ListTile(
                  title: Text('Help', style: TextStyle(color: Colors.white)),
                  trailing: Icon(Icons.help, color: Colors.white),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.exit_to_app,
                          color: Colors.white,
                        )),
                    Text(
                      'Exit',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )),
      body: Image.network(
          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/black-cyan-red-tiktok-background-image-design-template-a525f7ccbcd7a24af080e21b0e88d0c0_screen.jpg?ts=1637024886'),
    );
  }
}
