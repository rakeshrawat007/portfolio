import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Email: rakeshrawat456@gmail.com',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            'Phone: +918755964418',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.link),
                onPressed: () {
                  // Link to your LinkedIn or GitHub
                },
              ),
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () {
                  // Link to your GitHub
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}