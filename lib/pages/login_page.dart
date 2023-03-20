import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF73AEF5),
              Color(0xFF61A4F1),
              Color(0xFF478DE0),
              Color(0xFF398AE5),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.0),
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50.0),
                Container(
                  width: 300.0,
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 300.0,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    if (_usernameController.text.isEmpty ||
                        _passwordController.text.isEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Error'),
                          content:
                              Text('Please enter your username and password.'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Close'),
                            ),
                          ],
                        ),
                      );
                    } else {
                      Navigator.pushNamed(context, '/successful_registered');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 300.0,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/forget_password');
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
