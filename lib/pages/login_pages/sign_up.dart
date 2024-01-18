import 'package:daily_recipe/pages/login_pages/sign_in.dart';
import 'package:daily_recipe/provider/app_auth.provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:email_validator/email_validator.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    Provider.of<AppAuthProvider>(context, listen: false).providrInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Consumer<AppAuthProvider>(builder: (context, authProvider, _) =>Form(
                key: authProvider.formKey,
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
                                child:Text( "Register", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.white, fontFamily: 'Hellix'),),
                              )
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            controller: authProvider.nameController,
                            decoration: InputDecoration(
                                label: Row(
                                  children: [
                                    Icon(Icons.person_outline, color: Colors.grey.shade400,),
                                    SizedBox(width: 10,),
                                    Text("Full Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16.0, fontFamily: 'Hellix'),),
                                  ],
                                ),
                                focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white))),

                            // validator:(value){
                            //   if (value != null || (value?.isEmpty ?? false)) {
                            //     return 'Name Is Required';
                            //   }
                            //   return null;
                            // }
                          ),
                          SizedBox(height: 10.0,),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            controller: authProvider.emailController,
                            decoration: InputDecoration(
                                label: Row(
                                  children: [
                                    Icon(Icons.email_outlined, color: Colors.grey.shade400,),
                                    SizedBox(width: 10,),
                                    Text("Email Address", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16.0, fontFamily: 'Hellix'),),
                                  ],
                                ),
                                focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white))),

                            // validator:(value){
                            //   if(value != null || (value?.isEmpty ?? false)){
                            //     return 'Email Is Required';
                            //   }
                            //   if (!EmailValidator.validate(value!)){
                            //     return 'Not Vaild Email';
                            //   }
                            //   return null;
                            // }
                          ),
                          SizedBox(height: 10.0,),

                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            obscureText: authProvider.obsecureText,
                            controller: authProvider.passwordController,
                            decoration: InputDecoration(
                                label: Row(
                                  children: [
                                    Icon(Icons.lock_outline, color: Colors.grey.shade400,),
                                    SizedBox(width: 10,),
                                    Text("Password", style: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.normal, fontSize: 16.0, fontFamily: 'Hellix'),),
                                  ],
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => authProvider.toggleObsecure(),
                                  child: Icon(authProvider.obsecureText? Icons.visibility_off_outlined: Icons.visibility_outlined, color: Colors.grey.shade400,),
                                ),
                                focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white))),

                            // validator: (value){
                            //   if(value != null || (value?.isEmpty ?? false)) {
                            //     return 'Password is Required';
                            //   }
                            //   if (value!.length<6){
                            //     return 'Password Too Short';
                            //   }
                            //   return null;
                            // },
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
                                  // var PrefrenceServices = await SharedPreferences.getInstance();

                                  authProvider.signUp(context);
                                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                                },

                                child: Center(
                                  child: Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16.0, fontFamily: 'Hellix')),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 110.0,),

                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already registered?", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                          SizedBox(width: 5.0,),

                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                            },

                            child: Center(
                              child: Text("Sign in.", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.deepOrange, fontFamily: 'Hellix')),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ),
              )],
          ),
        ),
      ),

    );  }
}