import 'package:daily_recipe/pages/main_pages/home_page.dart';
import 'package:daily_recipe/pages/main_pages/login_page.dart';
import 'package:flutter/material.dart';


class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();

    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/frying-pan-empty-assorted-spices.jpg', ), fit: BoxFit.cover)),
          child: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Stack(
                    children: <Widget> [
                      Container(
                        padding: EdgeInsets.fromLTRB(30.0, 70.0, 0.0, 0.0),
                        child: Image.asset('assets/images/Logo (1).png', height: 111, width: 212, fit: BoxFit.fill),
                      ),

                      Container(
                          padding: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
                          child: Center(
                            child:Text( "Sign In", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Hellix'),),
                          )
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget> [

                        Center(child: Text("Enter your username, or the email address that you used to register. We'll send you an email with your username and a link to reset your password.", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.grey.shade400, fontFamily: 'Hellix'))),

                        SizedBox(height: 20.0,),

                        TextField(
                          controller: username,
                          decoration: InputDecoration(
                              label: Text("Email/ Username", style: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold, fontSize: 16.0, fontFamily: 'Hellix'),),
                              focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.black45, ))),
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
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                              },

                              child: Center(
                                child: Text("Send", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0, fontFamily: 'Hellix')),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 20.0,),

                      ],
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("If you still need help, check out", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                      //  Text("New Member?", style: TextStyle(fontWeight: FontWeight.normal),),

                      SizedBox(width: 5.0,),

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },

                        child: Center(
                          child: Text("Support", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.deepOrange, fontFamily: 'Hellix')),
                        ),
                      ),
                    ],
                  ),



                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
