
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/variables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: (){
              print(i);
              Navigator.pushNamed(context, 'dataent');
            },
            child: Container(
              height: 60,
              width: 60,
              child: Icon(Icons.add,color: Colors.white,),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(80),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Student Data",style: GoogleFonts.lobster(),),
        ),
        body: Stack(
          children: [
           ListView.builder(itemCount: i,itemBuilder: (context, index) => con(name[index],std[index],grid[index],index)),
            Padding(
              padding:  EdgeInsets.only(top: 700,left: 400),
              child: InkWell(
                onTap: (){
                  setState(() {
                    Navigator.pushNamed(context, 'dataent');
                  });
                },
                child: Container(
                  height: 70,
                  width: 70,
                  alignment: Alignment.center,
                  child: Icon(Icons.add,size: 50,color: Colors.white,),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(70)
                  ),
                ),
              ),
            ),
      ],
        )
      ),
    );
  }
  Widget con(String N,String Gr,String ST,int inde)
  {
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: double.infinity,
      color: Colors.red,
      child: Row(
        children: [
          SizedBox(width: 30,),
          Text("$N",style: TextStyle(fontSize: 15,color: Colors.white),),
          SizedBox(width: 30,),
          Text("$Gr",style: TextStyle(fontSize: 15,color: Colors.black),),
          SizedBox(width: 30,),
          Text("$ST",style: TextStyle(fontSize: 15,color: Colors.black),),
          Expanded(child: SizedBox()),
          IconButton(onPressed: (){
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Add data'),
                content: Container(
                  height: 400,
                  width: 400,
                  child: Column(
                    children: [
                      TextField(
                        controller: newgr,
                        decoration: InputDecoration(
                            hintText: "Update GRId"
                        ),

                      ),
                      TextField(
                        controller: newname,
                        decoration: InputDecoration(
                            hintText: "Update Name"
                        ),

                      ),
                      TextField(
                        controller: newstd,
                        decoration: InputDecoration(
                            hintText: "Update STD"
                        ),

                      ),
                    ],
                  )
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          grid[inde] = newgr.text;
                          name[inde] = newname.text;
                          std[inde] = newstd.text;
                        });
                        newgr.clear();
                        newstd.clear();
                        newname.clear();
                      },
                      child: Text('Comform')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancle'))
                ],
              ),
            );
          }, icon:Icon(Icons.published_with_changes),),
          SizedBox(width: 10,),
          IconButton(onPressed: (){
            setState(() {
              i--;
              name.removeAt(inde);
              grid.removeAt(inde);
              std.removeAt(inde);
            });
          }, icon:Icon(Icons.delete),),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}


