import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/signup.dart';

class validation extends StatelessWidget {
   var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN PAGE'),
      centerTitle: true,),
      body: Form(
        key: formkey,
          child: ListView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Login page',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  validator: (text){
                    if(text!.isEmpty || !text.contains('@gmail.com')){
                      return 'enter valid email';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    label:Text('Email',style: TextStyle(color: Colors.black87),),
                    prefixIcon: Icon(Icons.email,color: Colors.black87,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                       
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  validator: (pass){
                    if(pass!.isEmpty || pass.length<5){
                      return 'password should contain atleast 6 charecters';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    label: Text('password',style: TextStyle(color: Colors.black87),),
                    prefixIcon: Icon(Icons.lock,color: Colors.black87,),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: (){
  final valid=formkey.currentState!.validate();
  if(valid){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>signup()));
  }
                  },child: Text('LOGIN',style: TextStyle(color: Colors.white),
                ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      minimumSize: MaterialStateProperty.all(Size(350, 50))),
                ),
              )
            ],
          ),
      ),
    );
  }
}
