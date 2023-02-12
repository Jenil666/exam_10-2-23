
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
        backgroundColor: Colors.red.shade50,
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
                color: Colors.red.shade400,
                borderRadius: BorderRadius.circular(80),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          leading: Center(child: Text("Jenil",style: GoogleFonts.babylonica(fontSize: 18,color: Colors.white),)),
          backgroundColor: Colors.red,
          title: Text("Student Data",style: GoogleFonts.lobster(),),
          centerTitle: true,
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
      child: Row(
        children: [
          SizedBox(width: 20,),
          Container(width: 90,child: Text("$N",style: GoogleFonts.gentiumBookPlus(fontSize: 18,color: Colors.white),)),
          SizedBox(width: 20,),
          Container(width: 30,child: Text("$Gr",style: GoogleFonts.gentiumBookPlus(fontSize: 18,color: Colors.white),)),
          SizedBox(width: 20,),
          Container(width: 40,child: Text("$ST",style: GoogleFonts.gentiumBookPlus(fontSize: 18,color: Colors.white),)),
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
                            hintText: "Update GRId",
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),

                      ),
                      TextField(
                        controller: newname,
                        decoration: InputDecoration(
                            hintText: "Update Name",
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),

                      ),
                      TextField(
                        controller: newstd,
                        decoration: InputDecoration(
                            hintText: "Update STD",
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
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
                      child: Text('Comform'),style: ElevatedButton.styleFrom(backgroundColor: Colors.black)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancle'),style: ElevatedButton.styleFrom(backgroundColor: Colors.black))
                ],
              ),
            );
          }, icon:Icon(Icons.published_with_changes,color: Colors.white,),),
          SizedBox(width: 10,),
          IconButton(onPressed: (){
            setState(() {
              i--;
              name.removeAt(inde);
              grid.removeAt(inde);
              std.removeAt(inde);
            });
          }, icon:Icon(Icons.delete,color: Colors.white,),),
          SizedBox(width: 10,),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.red.shade700,
          borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.red,width: 2),
      ),
    );
  }
}


