import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPassword createState() => _ForgotPassword();
}

class _ForgotPassword extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Forgot Password'),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                      labelText: "email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.indigo,
                      ),
                      // icon: Icon(
                      //   Icons.email,
                      //   color: Colors.deepOrange,
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0.0),
                  shape: StadiumBorder(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF9C27B0),
                          Color(0xFF3F51B5),
                          Color(0xFF2196F3),
                        ],
                      ),
                    ),
                    child: Text(
                      'Send Reset Link',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/check');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
