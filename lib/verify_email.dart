import 'package:flutter/material.dart';
import 'package:forgot_app/new_password.dart';
import 'package:forgot_app/size_config.dart';
import 'main.dart';

class verify_email extends StatelessWidget {
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
                   padding: const EdgeInsets.only(top: 100),
                   child: Image.asset('images/email.png'),
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
                         "Verify your email",
                         style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 30.9,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                       child: Text(
                         "Please check your email to take 4 digit",
                         style: TextStyle(
                           color: Color(0xFF2B2C43).withOpacity(0.3),
                           fontSize: 15.9,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 19.0,right: 20.0,top: 15.0),
                       child: Text(
                         "code for continue.",
                         style: TextStyle(
                           color: Color(0xFF2B2C43).withOpacity(0.3),
                           fontSize: 15.9,
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Column(
                     children: [
                       FlatButton(

                           onPressed: null, )
                     ],
                   ),
                   Column(),
                   Column(),
                   Column(),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(top:40.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Center(
                       child: Text(
                         'Resend Code',
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
                         context, MaterialPageRoute(builder: (context) => new_password()),
                       );
                     },
                     child: Center(child:  Text(
                       'Send',
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


