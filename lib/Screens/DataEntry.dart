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
              Padding(
                padding: EdgeInsets.only(top: 700,left: 400),
                child: FloatingActionButton(onPressed: (){
                  Navigator.pop(context);
                  setState(() {
                    i++;
                    name.add(txtname.text);
                    std.add(txtstd.text);
                    grid.add(txtgr.text);

                    print("$name");
                    print("$std");
                    print("$grid");
                  });
                  txtstd.clear();
                  txtgr.clear();
                  txtname.clear();
                },child: Text("Done"),),
              ),
            ],
          ),
    ));
  }

  Widget entry() {
    return Column(
      children: [
        TextField(
          controller: txtname,
        ),
        TextField(
          controller: txtgr,
        ),
        TextField(
          controller: txtstd,
        ),
      ],
    );
  }
}
