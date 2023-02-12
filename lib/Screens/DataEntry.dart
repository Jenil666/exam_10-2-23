import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/variables.dart';

class DataEntry extends StatefulWidget {
  const DataEntry({Key? key}) : super(key: key);

  @override
  State<DataEntry> createState() => _DataEntryState();
}

class _DataEntryState extends State<DataEntry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          floatingActionButton: Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, 'homescreen');
                setState(() {
                  i++;
                  name.add(txtname.text);
                  std.add(txtstd.text);
                  grid.add(txtgr.text);


                  print("$name");
                  print("$std");
                  print("$grid");
                  print(i);
                });
                txtstd.clear();
                txtgr.clear();
                txtname.clear();
              },
              child: Container(
                height: 60,
                width: 60,
                alignment: Alignment.center,
                child: Text("Done",style: TextStyle(color: Colors.white),),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
            ),
          ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Data Entry"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
          txtstd.clear();
          txtgr.clear();
          txtstd.clear();
        }, icon: Icon(Icons.cancel_sharp,color: Colors.white,)),
      ),
          body: Stack(
            children: [
              ListView.builder(itemCount: 1,itemBuilder: (context, index) => entry(),),
            ],
          ),
    ));
  }

  Widget entry() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            cursorColor: Colors.black,
            controller: txtname,
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              hintText: "Enter Name"
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            cursorColor: Colors.black,
            controller: txtgr,
            decoration: InputDecoration(
                hintText: "Enter GrId",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            cursorColor: Colors.black,
            controller: txtstd,
            decoration: InputDecoration(
                hintText: "Enter Std",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
