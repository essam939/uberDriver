import 'package:flutter/material.dart';
import 'package:foralldriver/provider/colorProvider.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Sign in"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
          Text("Please sign in",style: TextStyle(fontSize: 20),),
            SizedBox(height: 15,),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email address',
                      )
                  ),
                  SizedBox(height: 25,),
                  TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    obscureText: true,
                  ),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text("I forgot my password",style: TextStyle(color: ColorProvider().primaryColor),),
                        onPressed: (){
                          Navigator.pushNamed(context, "/forgetPassword");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, "/home");

        },
        child: Icon(Icons.arrow_forward_ios),
        backgroundColor: ColorProvider().primaryColor,
      ),
    );
  }
}
