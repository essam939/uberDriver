import 'package:flutter/material.dart';
import 'package:foralldriver/model/customWidget.dart';
import 'package:foralldriver/provider/colorProvider.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
double space=20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Text("Let's Start by creating your account"),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width /2.2,

                  child: buildTextFormField("First name"),
                ),
                  Spacer(),
                  Container(
                    width:  MediaQuery.of(context).size.width /2.2,

                    child: buildTextFormField("Last name"),
                  ),
              ],
              ),
              SizedBox(height: space,),
              buildTextFormField("Email address",TextInputType.emailAddress,30),
              SizedBox(height: space,),
              buildTextFormField("Phone number",TextInputType.number,15),
              SizedBox(height: space,),
              buildTextFormField("Password",TextInputType.text,32,true),
              SizedBox(height: space,),
              buildTextFormField("City",TextInputType.text,20),
              SizedBox(height: space,),
              buildTextFormField("Invitation code",TextInputType.text,15),
              SizedBox(height: space,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width/1.2,
                    child: RaisedButton(
                      onPressed: (){
                        if (_formKey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                        }
                      },
                      child: Text("CONTINUE",style: TextStyle(color: Colors.white),),
                      color: ColorProvider().primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
