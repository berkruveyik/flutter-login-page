import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Current Password',
                  hintText: 'Enter your current password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'New Password',
                  hintText: 'Enter your new password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Confirm New Password',
                  hintText: 'Confirm your new password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/confirmation');
              },
              child: Text('Change Password'),
            ),
          ],
        ),
      ),
    );
  }
}
