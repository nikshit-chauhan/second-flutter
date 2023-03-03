import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget{

  @override
  createState(){
    return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String? email = '';
  String? password = '';

  @override
  Widget build(context){
      return Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
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
      validator: validateEmail,
      onSaved: (value){
        email = value;
      },
    );
  }
  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: validatePassword,
      onSaved: (value){
        password = value;
      },
    );
  }
  Widget submitButton(){
    return ElevatedButton(

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
      ),
      child: const Text('SUBMIT'),
      onPressed: (){
        if(formKey.currentState!.validate()){
          formKey.currentState!.save();
          print('Time to print my $email and $password to some API');
        }
      },
    );
  }
}