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
              // submitButton(),
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
  // Widget submitButton(){
  //   return
  // }
}