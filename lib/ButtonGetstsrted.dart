import 'package:flutter/material.dart';
import 'package:task1_flutter_internship/signscreen.dart';

import 'ex.dart';

class GetStarted extends StatelessWidget{
final String name;
final Color color1;
GetStarted( this.name,this.color1,){}
  @override
  Widget build(BuildContext context) {
  return Container(
    height: 55,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:color1,
    ),
    child: MaterialButton(onPressed: (){
      print('2345');
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  signscreen()));
    },
      child: Text(name,style: TextStyle(color: Colors.white,fontSize: 20),),),
   );
  }

}