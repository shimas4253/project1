import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Center(child: Text('List of contacts',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
          ListTile(
            leading: CircleAvatar(child:Icon(Icons.contacts,),radius: 30,),
            title: Text('contact 1'),
            subtitle: Text('7994306463'),
            trailing: Icon(Icons.phone,color: Colors.green,size: 30,),
          ),
          Divider(thickness: 3,),
          ListTile(
            leading: CircleAvatar(child:Icon(Icons.contacts,),radius: 30,),
            title: Text('contact 2'),
            subtitle: Text('7994306463'),
            trailing: Icon(Icons.phone,color: Colors.green,size: 30,),
          ),
          Divider(thickness: 3,),
          ListTile(
            leading: CircleAvatar(child:Icon(Icons.contacts,),radius: 30,),
            title: Text('contact 3'),
            subtitle: Text('7994306463'),
            trailing: Icon(Icons.phone,color: Colors.green,size: 30,),
          ),
          Divider(thickness: 3,),
          ListTile(
            leading: CircleAvatar(child:Icon(Icons.contacts,),radius: 30,),
            title: Text('contact 4'),
            subtitle: Text('7994306463'),
            trailing: Icon(Icons.phone,color: Colors.green,size: 30,),
          ),
          Divider(thickness: 3,),
          ListTile(
            leading: CircleAvatar(child:Icon(Icons.contacts,),radius: 30,),
            title: Text('contact 5'),
            subtitle: Text('7994306463'),
            trailing: Icon(Icons.phone,color: Colors.green,size: 30,),
          )
        ],
      ),
    );
  }
}