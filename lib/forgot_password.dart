import 'package:forgot_app/size_config.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'package:forgot_app/verify_email.dart';

class forgot_password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Image.asset('images/Lock.png'),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                          fontSize: 25.9,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Text(
                      "Enter your email address for recevory",
                      style: TextStyle(
                        color: Color(0xFF2B2C43).withOpacity(0.3),
                        fontSize: 13.9,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 19.0,right: 20.0,top: 15.0),
                    child: Text(
                      "your account.",
                      style: TextStyle(
                        color: Color(0xFF2B2C43).withOpacity(0.3),
                        fontSize: 13.9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0,right: 30.0,left: 30.0,bottom: 5.0),
              child: Container(
                  child: new Theme(
                    data: new ThemeData(
                      primaryColor:Color(0xFFF4F4F4),
                      primaryColorDark: Color(0xFFF4F4F4).withOpacity(0.4),
                    ),
                    child: new TextField(
                      decoration: new InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF4F4F4),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF4F4F4)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: 'Enter your email',
                      ),
                    ),
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Try another ways',
                      style: TextStyle(
                        color: Color(0xff4099FF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
           Padding(
              padding: const EdgeInsets.only(top: 25.0,left: 20.0,right: 20.0),
              child: Container(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [Color(0xFFFDD447), Color(0xFFFDBA3C)],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                  ),
                ),

                child: FlatButton(
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  padding: EdgeInsets.only(left: 10.0, top: 20, right: 10.0, bottom: 20),
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => verify_email()),
                    );
                  },
                  child: Center(child:  Text(
                    'Reset Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),


              ),
            ),  
          ],
        ),
     ),
      ),
   );
  }


}

