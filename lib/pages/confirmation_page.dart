import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0082C8),
      appBar: AppBar(
        backgroundColor: Color(0xFF0082C8),
        title: Text('Confirmation', style: TextStyle(fontSize: 24.0)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/images1.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 30.0),
            Text(
              'Congratulations!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'you have successfully registered.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 52, 52),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
