import 'package:flutter/material.dart';
import 'package:foralldriver/provider/colorProvider.dart';
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Image.asset("assets/images/uber.jpg",fit: BoxFit.cover,),
            width: double.infinity,
            height: MediaQuery.of(context).size.height /1.4,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Welcome to the Driver app",style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width/2.3,
                    height: 40,
                    child: RaisedButton(
                      child: Text("SIGN IN",style: TextStyle(color: Colors.white),),
                      color: ColorProvider().primaryColor,
                      onPressed: (){
                        Navigator.pushNamed(context, "/loginPage");
                      },
                    ),
                  ),
                  Spacer(),
                  ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width/2.3,
                    height: 40,
                    child: OutlineButton(
                      child: Text("REGISTER",style: TextStyle(color: ColorProvider().primaryColor),),
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, "/registerPage");
                      },
                      color: ColorProvider().primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
