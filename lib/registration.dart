import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1_flutter_internship/ButtonGetstsrted.dart';
import 'package:task1_flutter_internship/signscreen.dart';

class registration extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return homestate();
  }
}
class homestate extends State<registration>{
  var onsubmitted='';
  var email =TextEditingController();
  var password=TextEditingController();
  var number=TextEditingController();
  var onchange='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1,
            child: Stack(
                alignment: Alignment.centerLeft,
              fit: StackFit.loose,
              children: [
                Container(
                    width: double.infinity,
                    child: Image(image: AssetImage('assets/images/reg.png'))),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,bottom: 50),
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(30)
                      )
                     ,child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                )
              ],
            ),
          ),
          Expanded(flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 8,top: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome to fashion daily ',style: TextStyle(fontSize: 15),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Register',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        Row(children: [                      TextButton(onPressed: (){},
                            child: Text('Help',style: TextStyle(fontSize: 15,color: Colors.blue),)),
                          Icon(Icons.star,color: Colors.blue,size: 20,)],),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Email',style: TextStyle(fontSize: 18,),),
                    SizedBox(height: 5,),
                    TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Eg-example@gmail.com',
                          border: OutlineInputBorder(),

                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Phone Number',style:TextStyle(fontSize: 18),),
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
                    Text('Password',style:TextStyle(fontSize: 18),),
                    SizedBox(height: 5,),
                    TextFormField(
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'PassWord',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.remove_red_eye)
                      ),
                    ),
                    SizedBox(height: 10,),
                    GetStarted('Register', Colors.blueAccent),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('or',style: TextStyle(fontSize: 20,color: Colors.grey),),
                      ],
                    ),
                    SizedBox(height: 10,),
                Container(
                 height: 40,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Has any account?',style: TextStyle(),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>signscreen()));
                        },
                            child: Text('Sign in here',style: TextStyle(color: Colors.blue),))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('By registering your account you are agree to our',
                          style: TextStyle(),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('terms and condition',
                          style: TextStyle(color: Colors.blue),),
                      ],
                    )
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