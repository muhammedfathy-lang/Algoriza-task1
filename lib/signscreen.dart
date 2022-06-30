import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1_flutter_internship/registration.dart';

import 'ButtonGetstsrted.dart';

class signscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return signstate();
  }

}
class signstate extends State<signscreen>{
  var number=TextEditingController();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    drawerScrimColor: Colors.white,
    body: Column(
      children: [
    Container(

        child: Image(image: AssetImage('assets/images/sign.png',),)),
        Expanded(flex: 6,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 8,top: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome to fashion daily ',style: TextStyle(fontSize: 15),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sign in',style: TextStyle(fontSize: 40,),),
                      Row(children: [
                        TextButton(onPressed: (){},
                          child: Text('Help',style: TextStyle(fontSize: 15,color: Colors.blue),)),
                        Icon(Icons.star,color: Colors.blue,size: 20,)],),
                    ],
                  ),

                  SizedBox(height: 20),
                  Text('Text Field Label',style:TextStyle(fontSize: 18),),
                  SizedBox(height: 5,),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    controller: number,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: '812345678',
                      prefixIcon:CountryCodePicker(
                        initialSelection: 'in',
                        favorite: ['egypt','Us'],
                        showDropDownButton: true,
                        showFlagMain: false,
                        showFlag: true,
                        alignLeft: false,
                      ),

                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 15),
                  GetStarted('Sign in', Colors.blueAccent),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('or',style: TextStyle(fontSize: 20,color: Colors.grey),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.blue),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [Image( image:
                       AssetImage('assets/images/google.png',),height: 20,),
                       SizedBox(width: 11,),
                       Text('Sign with by google',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
    ],
    ),
                  ),
                  SizedBox(height: 25,)
                  ,Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Doesn't Has any account?",style: TextStyle(),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  registration()));
                      },
                          child: Text('Register her',style: TextStyle(color: Colors.blue),))
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text('Use the application according to policy rules'
                            'any kinds of violations will be subject to sanctions',textAlign: TextAlign.center,
                          style: TextStyle(),),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
  }

}