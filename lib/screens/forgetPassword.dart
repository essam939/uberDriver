import 'package:flutter/material.dart';
import 'package:foralldriver/model/customWidget.dart';
class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgetten your Password"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0,),
              buildTextFormField("Email address",TextInputType.emailAddress,30),
              SizedBox(height: 20.0,),
              ButtonTheme(
              minWidth: MediaQuery.of(context).size.width /1.2,
                child: RaisedButton(
                  child: Text("NEXT",style: TextStyle(color: Colors.white),),
                  onPressed: (){},
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
