import 'package:daily_recipe/pages/login_pages/sign_in.dart';
import 'package:daily_recipe/pages/login_pages/sign_up.dart';
import 'package:daily_recipe/pages/main_pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppAuthProvider extends ChangeNotifier{
  GlobalKey<FormState>? formKey;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? nameController;
  bool obsecureText = true;

  void providrInit(){
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
  }

  void providrDispose(){
    emailController = null;
    passwordController = null;
    nameController = null;
    formKey = null;
    obsecureText = true;
  }

  void toggleObsecure(){
    obsecureText = !obsecureText;
    notifyListeners();
  }

  void openRegisterPage(BuildContext context){
    providrDispose();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const SignUp()));
  }

  void openLoginPage(BuildContext context){
    providrDispose();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const SignIn()));
  }

  Future<void> signUp(BuildContext context) async {
    try{
      if (formKey?.currentState?.validate() ?? false){
        var credentials = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController!.text, password: passwordController!.text);
        
        if (credentials.user !=null){
          await credentials.user?.updateDisplayName(nameController!.text);
          providrDispose();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
        }
      }
    } catch (e){}
  }
}