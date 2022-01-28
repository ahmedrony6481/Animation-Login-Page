import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation Login Page',
      home: Login(),
    );
  }
}
class Login extends StatefulWidget {
  const Login({key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://i2.paste.pics/FSLPV.png'),
                    fit: BoxFit.fill
                  )
                ),
                child: Stack(
                  children: [
                    Positioned(
                      width: 80,
                      height: 180,
                      left: 25,
                      child: FadeAnimation(1, Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://i2.paste.pics/FSM1O.png')
                          )
                        ),
                      ),
                    )),
                    Positioned(
                      width: 80,
                      height: 140,
                      left: 115,
                      child: FadeAnimation(1.3,Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://i2.paste.pics/FSM4N.png')
                            )
                        ),
                      ),
                    )),
                    Positioned(
                      top: 40,
                      right: 40,
                      width: 80,
                      height: 60,
                      child: FadeAnimation(1.5,Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://i2.paste.pics/FSM51.png')
                            )
                        ),
                      ),
                    )),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 80),
                        child: Center(
                          child: Text('Login',
                          style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(02),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(140, 148, 252, 1),
                            blurRadius: 25,
                            offset: Offset(0,12)
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(

                            ),
                            child: FadeAnimation(1.4,TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email Or Phone Number',
                                hintStyle: TextStyle(color: Colors.grey[600])
                              ),
                            ),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(02),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(140, 148, 252, 1),
                            blurRadius: 25,
                            offset: Offset(0,12)
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(

                            ),
                            child: FadeAnimation(1.6,TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey[600]),
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(140, 148, 251, 1),
                            Color.fromRGBO(140, 148, 251, 6),
                          ]
                        )
                      ),
                      child: Center(
                        child: FadeAnimation(1.5,Text('Login',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 50,
                      ),
                    Text('Forgot Password',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(140, 148, 251, 1)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

