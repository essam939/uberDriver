import 'package:flutter/material.dart';
import 'package:foralldriver/provider/colorProvider.dart';

class RecentTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RecentTransactionsView();
  }
}

class RecentTransactionsView extends StatefulWidget {
  @override
  _RecentTransactionsViewState createState() => _RecentTransactionsViewState();
}

class _RecentTransactionsViewState extends State<RecentTransactionsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Activity"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.help),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 35,
                    ),
                    Text("Your Balance", style: TextStyle(fontSize: 20, color: Colors.grey,),),
                    SizedBox(height: 8,),
                    Text("\$3.60", style: TextStyle(fontSize: 30,),),
                    SizedBox(height: 35,),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: double.infinity,
                          height: 60,
                          margin: EdgeInsets.only(bottom: 10),
                          alignment: FractionalOffset.center,
                          decoration: BoxDecoration(
                            color: ColorProvider().primaryColor,
                            borderRadius:
                            BorderRadius.all(const Radius.circular(4.0)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.attach_money, color: Colors.white, size: 35,),
                              Text('CASH OUT', style: TextStyle(color: Colors.white, fontSize: 20)),
                            ],
                          )),
                    ),
                    SizedBox(height: 10,),
                    Text("PAYMENT SCHEDULED: 9/24",
                      style: TextStyle(fontSize: 15, color: Colors.grey,),
                    ),
                    SizedBox(height: 25,),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.black12,
              child: Text("Posted", style: TextStyle(fontSize: 20, color: Colors.black38),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("ForAll", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      Text("\$3.60", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Sep 19, 10:13 PM", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
                      Text("\$3.60", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
