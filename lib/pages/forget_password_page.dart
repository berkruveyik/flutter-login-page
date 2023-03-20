import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 57, 83),
      appBar: AppBar(
        title: const Text('Reset Password'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Enter your email address and new password below to reset your password.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24.0),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address.';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email address.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Email address',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: !_passwordVisible,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your new password.';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'New password',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(16.0),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: !_confirmPasswordVisible,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your new password.';
                    }
                    if (value != _passwordController.text) {
                      return 'Passwords do not match.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Confirm new password',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(16.0),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _confirmPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _confirmPasswordVisible = !_confirmPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
// Password reset logic here
                      Navigator.pushNamed(context,
                          '/success_page'); // Navigate to confirmation page
                    }
                  },
                  child: Text('Reset Password'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
