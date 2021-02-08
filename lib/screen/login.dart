// TODO Implement this library.
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter_signin_button/flutter_signin_button.dart';


void main() => runApp(LogIn());

class LogIn extends StatelessWidget {
  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(

      home: Scaffold(
        resizeToAvoidBottomPadding: false,

        body: Container(

          decoration: BoxDecoration(

            color: Colors.deepPurple,
          ),
          width: width*1,
          height: height*1,
          child: Center(
            child: Column(
              children: [
                SizedBox(width: 0,height: 40),
                Transform.rotate(
                  angle: -math.pi / 5,
                  child: Text('S',
                    style: TextStyle(fontSize: 80,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.orange[800],),
                  ),
                ),

                Text(
                  'SALOFY',
                  style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..shader = ui.Gradient.linear(
                          const Offset(0, 20),
                          const Offset(150, 20),
                          <Color>[
                            Colors.red,
                            Colors.yellow,
                          ],
                        )
                  ),
                ),
                SizedBox(width: 0,height: 10),
                SizedBox(
                  width: width*0.8,
                  height: height*0.55,


                  child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:  Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: height*0.03),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height*0.08,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.phone,
                                        color: Colors.grey,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                        //borderSide: const BorderSide(),
                                      ),

                                      hintStyle: TextStyle(color: Colors.grey,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.black12,
                                      hintText: 'Mobile Number'),
                                ),
                              ),
                              SizedBox(width: 0,height: height*0.015),

                              SizedBox(
                                height: height*0.08,
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Colors.grey,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.grey,
                                      ),
                                      border: OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                        borderSide: BorderSide.none,
                                        //borderSide: const BorderSide(),
                                      ),


                                      hintStyle: TextStyle(color: Colors.grey,fontFamily: "WorkSansLight"),
                                      filled: true,
                                      fillColor: Colors.black12,
                                      hintText: 'Password'),
                                ),
                              ),
                              SizedBox(width: 0,height: height*0.020),
                              Text("Forgot Password?",
                              style: TextStyle(fontSize: 15,color: Colors.grey),),

                              SizedBox(width: 0,height: height*0.010),

                              SizedBox(
                                width: width*0.5,
                                child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.deepPurple,

                                  child: Text("LOGIN"),
                                  onPressed: () {},
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),

                              SizedBox(width: 0,height: height*0.010),
                              Text("SIGNUP",
                                style: TextStyle(fontSize: 16,color: Colors.grey),),
                              SizedBox(width: 0,height: height*0.01),
                              Text("or SignIn using",
                                style: TextStyle(fontStyle:FontStyle.italic,fontSize: 14,color: Colors.grey),),
                              SizedBox(width: 0,height: height*0.01),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                       SignInButton(
                                        Buttons.Facebook,
                                        mini: true,
                                        onPressed: () {_showButtonPressDialog(context, 'Facebook');},
                                      ),

                                     SignInButton(
                                        Buttons.Email,
                                        mini: true,
                                        onPressed: () {_showButtonPressDialog(context, 'Facebook');},
                                      ),

                                    SignInButton(
                                        Buttons.Twitter,
                                        mini:true,
                                        onPressed: () {_showButtonPressDialog(context, 'Facebook');},
                                      ),



                                  ],
                                ),




                          ],
                          ),
                        ),
                      ),

                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}






