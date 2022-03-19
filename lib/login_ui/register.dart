import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smart_lamp_app/login_ui/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  String name = "";
  void fireToast2(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue.shade500,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Route _createRouteLogin() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Login(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade400,
                ],
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.859,
                      margin: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(30),
                        child: Form(
                          key: formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Here to Get',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              const Text(
                                'Welcomed !',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 3, bottom: 3),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'Enter Your Username'),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                            .hasMatch(value)) {
                                      return "Enter Correct Email Address";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 3, bottom: 3),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'Enter Your Email Address'),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                            .hasMatch(value)) {
                                      return "Enter Correct Email Address";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 3, bottom: 3),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    labelText: 'Enter Your Password',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        RegExp(r'^[a-z A-z]+$')
                                            .hasMatch(value)) {
                                      return "Enter Correct Username";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 3, bottom: 3),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      labelText: 'Verify Your Password'),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        RegExp(r'^[a-z A-z]+$')
                                            .hasMatch(value)) {
                                      return "Enter Correct Username";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_createRouteLogin());
                                      },
                                      height: 50,
                                      minWidth: 150,
                                      child: const Text(
                                        'Login',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      color: Colors.blue.shade400,
                                      textColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                    MaterialButton(
                                      onPressed: () {},
                                      height: 50,
                                      minWidth: 150,
                                      child: const Text(
                                        'Next',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      color: Colors.blue.shade400,
                                      textColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, right: 30, left: 30),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text:
                                        'By logging in you are agree with our ',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.blueGrey,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Term & Condition',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.blue,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            print('Hash tag #tag');
                                            fireToast2(
                                                "Term & Conditions Hash Tag");
                                          },
                                      ),
                                      const TextSpan(text: ' and '),
                                      TextSpan(
                                          text: 'Privacy Policy',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.blue),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print('Hash tag #tag');
                                              fireToast2(
                                                  "Privacy Policy Hash Tag");
                                            }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              // You can add title here
              leading: IconButton(
                icon: new Icon(Icons.arrow_back_rounded, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              backgroundColor:
                  Colors.blue.withOpacity(0.0), //You can make this transparent
              elevation: 0.0, //No shadow
            ),
          ),
        ],
      ),
    );
  }
}
