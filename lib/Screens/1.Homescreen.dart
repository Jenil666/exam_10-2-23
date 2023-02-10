
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text("Homscreen"),
        ),
        body: Stack(
          children: [
           ListView.builder(itemCount: i,itemBuilder: (context, index) => con(name[index],std[index],grid[index])),
            Padding(
              padding:  EdgeInsets.only(top: 700,left: 400),
              child: InkWell(
                onTap: (){
                  setState(() {
                    print("$i");
                    print("$name");
                    print("$std");
                    print("$grid");
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
  Widget con(String N,String Gr,String ST)
  {
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: double.infinity,
      color: Colors.red,
      child: Row(
        children: [
          SizedBox(width: 30,),
          Text("${grid[i]}",style: TextStyle(fontSize: 15,color: Colors.black),),
          SizedBox(width: 30,),
          Text("${name[i]}",style: TextStyle(fontSize: 15,color: Colors.black),),
          SizedBox(width: 30,),
          Text("${std[i]}",style: TextStyle(fontSize: 15,color: Colors.black),),
        ],
      ),
    );
  }
}


//showDialog(
//   context: context,
//   builder: (context) => AlertDialog(
//     title: Text('Add data'),
//     content: Container(
//       height: 400,
//       width: 400,
//       child: ListView.builder(itemCount: 1,itemBuilder: (context, index) => entry(),),
//     ),
//     actions: [
//       ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Comform')),
//       ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Cancle'))
//     ],
//   ),
// );