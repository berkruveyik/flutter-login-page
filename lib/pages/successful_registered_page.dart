import 'package:flutter/material.dart';

class SuccessfulRegisteredPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 135, 187),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset(
              'assets/images/images1.png',
              height: 150,
              width: 150,
            ),
          ),
          Text(
            'Congratulations!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'you have successfully logged in.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40.0),
          GestureDetector(
            onTapDown: (_) {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('Logout'),
                  content: Text('Are you sure you want to log out?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Text('Yes'),
                    ),
                  ],
                ),
              );
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF2B2D42),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 2.0,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
