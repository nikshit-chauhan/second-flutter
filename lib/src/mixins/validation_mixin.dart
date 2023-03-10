class ValidationMixin {
  String? validateEmail (value){
    if(!value!.contains('@')){
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(value){
    if(value!.length < 5){
      return 'Password must be at least 5 characters';
    }
    return null;
  }
}