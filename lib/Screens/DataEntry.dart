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
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
            ),
          ),
      appBar: AppBar(
        title: Text("Data Entry"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
          txtstd.clear();
          txtgr.clear();
          txtstd.clear();
        }, icon: Icon(Icons.chevron_left_outlined)),
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
        TextField(
          controller: txtname,
          decoration: InputDecoration(
            hintText: "Enter Name"
          ),
        ),
        TextField(
          controller: txtgr,
          decoration: InputDecoration(
              hintText: "Enter GrId"
          ),
        ),
        TextField(
          controller: txtstd,
          decoration: InputDecoration(
              hintText: "Enter Std"
          ),
        ),
      ],
    );
  }
}
