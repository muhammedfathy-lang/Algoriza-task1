
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1_flutter_internship/ButtonGetstsrted.dart';
import 'package:task1_flutter_internship/registration.dart';
import 'package:task1_flutter_internship/signscreen.dart';

import 'ex.dart';

main(){
runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homestate();
  }}
  class homestate extends State<myapp>{
    Color mycolor1=Colors.orange;
    Color mycolor2=Colors.grey;
     int pagechanged=0;
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home:
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0,top: 10),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(300)
                    ),
                    child: MaterialButton(onPressed: (){
                      }
                      ,child: Text('Skip',style:TextStyle(color: Colors.black,fontSize: 17,),),)),
              )
            ],
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: PageView(
              controller: PageController(),
              onPageChanged: (index){
                setState(() {
                  pagechanged=index ;
                  if(index==0){
                    mycolor1=Colors.orange;
                    mycolor2=Colors.grey;
                  } else if(index==1){
                    mycolor2=Colors.orange;
                    mycolor1=Colors.grey;
                  }
                });
              },
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('7',style: TextStyle(color: Colors.orangeAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                        Text('Krave',style: TextStyle(color: Colors.teal,fontSize: 30,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Expanded(flex: 2,
                      child: Image(
                        image: AssetImage('assets/images/bike.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Get food delivery to your doorstep asap',
                        textAlign: TextAlign.center,
                        // overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Text('we have young and professional delivery team '
                          'that will bring your food as soon as possible to your doorstep ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20,color: Colors.grey),),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:GetStarted('Get Started',Colors.teal.shade300)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 30,
                          color: mycolor1,
                        ),
                        SizedBox(width: 3,),
                        Container(
                          height: 5,
                          width: 30,
                          color: mycolor2,
                        ),
                        SizedBox(width: 3,),
                        Container(
                          height: 5,
                          width: 30,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",style: TextStyle(fontWeight: FontWeight.bold),),
                          TextButton(onPressed: (){},
                            child: Text('Sign up',textAlign: TextAlign.left,style: TextStyle(color: Colors.blue,fontSize: 15),),)
                        ],
                      ),
                    )
                  ],
                ),

                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image(
                        height: 200,
                        image: AssetImage('assets/images/logo2.png',),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Buy Any Food from your',
                        textAlign: TextAlign.center,
                        // overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                    ),Text('favorite restaurant',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Text('we are constantly adding your favorite ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20,color: Colors.grey),),
                    ),
                    Text('restaurant throughout the territory and around ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 19,color: Colors.grey),),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Text('your area carefully selected ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20,color: Colors.grey),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.teal[300]
                        ),
                        child: GetStarted('Get Started',Colors.teal.shade300),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 30,
                          color: mycolor1,
                        ),
                        SizedBox(width: 3,),
                        Container(
                          height: 5,
                          width: 30,
                          color: mycolor2,
                        ),
                        SizedBox(width: 3,),
                        Container(
                          height: 5,
                          width: 30,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",style: TextStyle(fontWeight: FontWeight.bold),),
                          TextButton(onPressed: (){
                          },
                            child: Text('Sign up',textAlign: TextAlign.left,style: TextStyle(color: Colors.blue,fontSize: 15),),)
                        ],
                      ),
                    )
                  ],
                ),
              ]
          )
        ),
      );
  }

  }


