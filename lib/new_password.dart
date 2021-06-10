import 'package:flutter/material.dart';
import 'package:forgot_app/size_config.dart';
import 'main.dart';

class new_password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children:<Widget>[
            new Container(
            color: Colors.white,
              width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200.0,left: 30.0),
                  child: Row(
                    children: [
                       RichText(
                        text: new TextSpan(
                        style: new TextStyle(
                          fontSize: 40.5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                              text:
                                    'New ',
                              style: TextStyle(
                                color: Color(0xFFFF9000),
                              ),
                          ),
                          TextSpan(
                              text:'Password'),
                        ],
                      ),
                    ),
                  ],
                  ),
                ),
               Row(
                 children: [
                   Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 25.0,left:30.0),
                         child: Text(
                           'Reset your password to recovery &',
                           style: TextStyle(
                             color: Color(0xFF2B2C43).withOpacity(0.3),
                             fontSize: 17.9,
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 15.0, left:10.0),
                         child: Text(
                           'login to your account.',
                           style: TextStyle(
                             color: Color(0xFF2B2C43).withOpacity(0.3),
                             fontSize: 17.9,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0,right: 25.0,left: 25.0,bottom: 20),
                  child: Container(
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor:Color(0xFFF4F4F4),
                            primaryColorDark: Color(0xFFF4F4F4),
                          ),
                          child: new TextField(
                            obscureText: true,
                            decoration: new InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFF4F4F4),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFF4F4F4)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'New password',
                              suffixIcon: const Icon(
                                  Icons.visibility_off_rounded,
                                  color: Colors.black,
                              ),
                            ),
                          ),
                        )
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,right: 25.0,left: 25.0,bottom: 30),
                  child: Container(
                      child: new Theme(
                        data: new ThemeData(
                          primaryColor:Color(0xFFF4F4F4),
                          primaryColorDark: Color(0xFFF4F4F4),
                        ),
                        child: new TextField(
                          obscureText: true,
                          decoration: new InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF4F4F4),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFF4F4F4)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'Retype password',
                            suffixIcon: const Icon(
                              Icons.visibility_off_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
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
                      onPressed: (){},
                      child: Center(child:  Text(
                        'Confirm',
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
         ],
        ),
      ),
    );
  }
}
