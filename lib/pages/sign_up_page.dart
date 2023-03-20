import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  late String _fullName;
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildFullNameField(),
              _buildEmailField(),
              _buildPasswordField(),
              SizedBox(height: 10.0),
              _buildSignUpButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFullNameField() {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Full Name',
          hintText: 'Enter your full name',
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your full name';
          }
          return null;
        },
        onSaved: (value) => _fullName = value!,
      ),
    );
  }

  Widget _buildEmailField() {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your email address';
          }
          if (!value.contains('@')) {
            return 'Please enter a valid email address';
          }
          return null;
        },
        onSaved: (value) => _email = value!,
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder(),
        ),
        obscureText: true,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a password';
          }
          if (value.length < 5) {
            return 'Password should be at least 5 characters long';
          }
          return null;
        },
        onSaved: (value) => _password = value!,
      ),
    );
  }

  Widget _buildSignUpButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          Navigator.pushNamed(context, '/confirmation');
        }
      },
      child: Text('Sign Up'),
    );
  }
}
