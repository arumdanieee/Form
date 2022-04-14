import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPassword createState() => _ResetPassword();
}

class _ResetPassword extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Reset Password'),
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
                    keyboardType: TextInputType.phone,
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.security,
                        color: Colors.indigo,
                      ),
                      suffixIcon: Icon(Icons.visibility),
                      //icon: Icon(Icons.security),
                      border: OutlineInputBorder(borderRadius: new BorderRadius.circular(20.0)),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "Retype password",
                      prefixIcon: Icon(
                        Icons.security,
                        color: Colors.indigo,
                      ),
                      suffixIcon: Icon(Icons.visibility),
                      //icon: Icon(Icons.security),
                      border: OutlineInputBorder(borderRadius: new BorderRadius.circular(20.0)),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Password harus sama';
                      }
                      return null;
                    },
                  ),
                ),
                CheckboxListTile(
                  title: Text('Save Password'),
                  value: nilaiCheckBox,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (value) {
                    setState(() {
                      nilaiCheckBox = value!;
                    });
                  },
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
                      'Update Password',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/pass');
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
