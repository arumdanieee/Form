import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Sign Up'),
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
                    decoration: new InputDecoration(
                      hintText: "contoh: ini budi",
                      labelText: "Nama",
                      prefixIcon: Icon(
                        Icons.people,
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
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                      hintText: "contoh: www@gmail.com",
                      labelText: "Email",
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
                CheckboxListTile(
                  title: Text('Save password'),
                  //subtitle: Text('Dart, widget, http'),
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
                      'Create Account',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/home');
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
