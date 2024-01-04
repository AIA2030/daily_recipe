import 'package:daily_recipe/pages/login_pages/forget_pass.dart';
import 'package:daily_recipe/pages/login_pages/sign_up.dart';
import 'package:daily_recipe/pages/main_pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:email_validator/email_validator.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;
  bool obsecureText = true;
  @override
  void initState() {

    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
     super.initState();
  }

  void toggleObsecure() {
    obsecureText = !obsecureText;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Form(
            key: formKey,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/frying-pan-empty-assorted-spices.jpg', ), fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Stack(
                    children: <Widget> [
                      Container(
                        alignment:Alignment.center,
                        padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
                        child: Image.asset('assets/images/Logo (1).png', height: 111, width: 212, fit: BoxFit.fill),
                      ),

                      Container(
                          padding: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
                          child: Center(
                            child:Text( "Sign In", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.white, fontFamily: 'Hellix'),),
                          )
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      SizedBox(height: 10.0,),
                      TextFormField(
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(
                              label: Row(
                                children: [
                                  Icon(Icons.email_outlined, color: Colors.grey.shade400,),
                                  SizedBox(width: 10,),
                                  Text("Email Address", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16.0, fontFamily: 'Hellix'),),
                                ],
                              ),
                              focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white))),

                          validator:(value){
                            if(value != null || (value?.isEmpty ?? false)){
                              return 'Email Is Required';
                            }
                            if (!EmailValidator.validate(value!)){
                              return 'Not Vaild Email';
                            }
                            return null;
                          }
                      ),
                      SizedBox(height: 10.0,),

                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        obscureText: obsecureText,
                        controller: passwordController,
                        decoration: InputDecoration(
                            label: Row(
                              children: [
                                Icon(Icons.lock_outline, color: Colors.grey.shade400,),
                                SizedBox(width: 10,),
                                Text("Password", style: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.normal, fontSize: 16.0, fontFamily: 'Hellix'),),
                              ],
                            ),
                            suffixIcon: InkWell(
                              onTap: () => toggleObsecure(),
                              child: Icon(obsecureText? Icons.visibility_off_outlined: Icons.visibility_outlined, color: Colors.grey.shade400,),
                            ),
                            focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white))),

                        validator: (value){
                          if(value != null || (value?.isEmpty ?? false)) {
                            return 'Password is Required';
                          }
                          if (value!.length<6){
                            return 'Password Too Short';
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 10.0,),

                      Container(
                        padding: EdgeInsets.only(left: 120,),
                        height: 40.0,
                        color: Colors.transparent,
                        child: Container(

                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPass()));
                            },

                            child: Center(
                              child: Text("Forget Password?", style: TextStyle(color: Colors.cyan, decoration: TextDecoration.underline, fontWeight: FontWeight.normal, fontSize: 12.0, fontFamily: 'Hellix')),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 40.0,),

                      Container(
                        height: 50.0,
                        width: 315,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(15.0)),

                          child: InkWell(
                            onTap: () async{
                              if(formKey.currentState?.validate() ?? false){
                                GetIt.I.get<SharedPreferences>().setBool('isLogin', true);
                              }


                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                            },

                            child: Center(
                              child: Text("Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16.0, fontFamily: 'Hellix')),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 110.0,),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                      SizedBox(width: 5.0,),

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                        },

                        child: Center(
                          child: Text("Register.", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.deepOrange, fontFamily: 'Hellix')),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

          ),
        ],
      ),

    );  }
}