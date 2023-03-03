import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  
  @override
  createState(){
    return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(context){
      return Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              emailField(),
              passwordField(),
              Container(margin:const EdgeInsets.only(top: 25.0)),
              submitButton(),
            ],
          ),
        ),
      );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
    );
  }
  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
    );
  }
  Widget submitButton(){
    return ElevatedButton(

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
      ),
      child: const Text('SUBMIT'),
      onPressed: (){},
    );
  }
}