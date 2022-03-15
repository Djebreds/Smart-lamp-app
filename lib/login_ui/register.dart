import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  String _username;
  String _password;
  String _email;
  String _verifypass;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildUsernameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Enter your Username'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Username is required';
        }
      },
      onSaved: (String value) {
        _username = value;
      },
    );
  }

  Widget _buildPasswordField() {
    return null;
  }

  Widget _buildEmailField() {
    return null;
  }

  Widget _buildVerfiypassField() {
    return null;
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
                  padding: EdgeInsets.only(top: 30),
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
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(25),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Here to Get',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.blueGrey,
                              ),
                            ),
                            Text(
                              'Welcomed',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.blueGrey,
                              ),
                            ),
                            _buildUsernameField(),
                            // _buildEmailField(),
                            // _buildPasswordField(),
                            // _buildVerfiypassField(),
                            SizedBox(
                              height: 100,
                            ),
                            RaisedButton(
                              child: Text(
                                'Register',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                              ),
                              onPressed: () => {},
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
