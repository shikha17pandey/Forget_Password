import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forgot_app/forgot_password.dart';
import 'size_config.dart';
import 'main.dart';

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children:<Widget>[
           new Container(
            //height: MediaQuery.of(context).size.height,
            color: Colors.white,
            //width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical*10),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*5),
                            child: Column(
                              children: <Widget>[
                                Image.asset('images/aa2.png'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.asset('images/aa1.png'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical*2),
                Row(
                    children: <Widget> [
                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*5),
                        child: Column(
                          children: <Widget>[
                            Text("Welcome to",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0)),
                          ],
                        ),
                      ),

                    ]
                ),
                Row(
                    children: <Widget> [
                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*5),
                        child: Column(
                          children: <Widget>[
                            Text("Travelagi",
                                style: TextStyle(
                                    color: Color(0xFFFF9000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0)),
                          ],
                        ),
                      ),
                    ]
                ),
                Row(
                    children: <Widget> [
                      Image.asset('images/aa3.png', height: SizeConfig.blockSizeVertical*10),
                    ]
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*10,
                                             right: SizeConfig.blockSizeHorizontal*10),
                    child: Column(
                        children: [
                          Container(
                              child: Theme(
                                data: new ThemeData(
                                  primaryColor:Color(0xFFF4F4F4),
                                  primaryColorDark: Color(0xFFF4F4F4),
                                ),
                                child: new TextField(
                                                                   decoration: new InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF4F4F4),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFFF4F4F4)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: 'Gotravel@gmail.com',
                                    suffixIcon: const Icon(
                                        Icons.check_box,
                                        color: Colors.green
                                    ),
                                  ),
                                ),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*2),
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
                                      hintText: 'Password',
                                      suffixIcon: const Icon(
                                        Icons.visibility_off_rounded,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical*2),
                          Column(
                            children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => forgot_password()),
                                );
                              },
                              child: Text("Forgot Password?",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black38,
                                  ),
                                ),
                              ),
                            ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical*2),
                          Container(
                            decoration: new BoxDecoration(
                              gradient: new LinearGradient(
                                colors: [Color(0xFFFDD447), Color(0xFFFDBA3C)],
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                              ),
                            ),
                            height: SizeConfig.blockSizeVertical*6,
                            child: FlatButton(
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              onPressed: (){
                                // Navigator.push(
                                //   context, MaterialPageRoute(builder: (context) => forgot_password()),
                                // );
                              },
                              child: Center(child:  Text(
                                'Log in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ),
                            ),
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical*2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Column(
                                  children: [
                                    horizontalLine(),
                                  ],
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text('  or login with  ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    horizontalLine(),
                                  ],
                                ),
                              ]
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical*2),
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 5, // 20%
                                child:
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  child: FlatButton(
                                    color: Color(0xFFF4F4F4),
                                    textColor: Colors.white,
                                    disabledColor: Colors.grey,
                                    // disabledTextColor: Colors.black,
                                    // padding: EdgeInsets.only(left: 5.0, top: 20, right: 5.0, bottom: 20),
                                    splashColor: Color(0xFFF4F4F4),
                                    onPressed: (){},
                                    child: Center(child: Image.asset('images/google.png',)),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5, // 20%
                                child:
                                Container(
                                  //padding: const EdgeInsets.all(5.0),
                                  child: FlatButton(
                                    color: Color(0xFFF4F4F4),
                                    textColor: Colors.white,
                                    disabledColor: Colors.grey,
                                    // disabledTextColor: Colors.black,
                                    // padding: EdgeInsets.only(left: 5.0, top: 20, right: 5, bottom: 20),
                                    splashColor:  Color(0xFFF4F4F4),
                                    onPressed: (){},
                                    child: Center(child: Image.asset('images/facebook.png')),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical*2),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            //padding: EdgeInsets.only(top:10.0),
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dont have account?',
                                  style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Color(0xfff79c4f),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ],
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


 Widget horizontalLine() =>
    Container(
      width: SizeConfig.blockSizeHorizontal*27,
      height: 1.0,
      color: Colors.grey,
    );

 }