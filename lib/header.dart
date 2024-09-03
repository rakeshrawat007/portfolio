import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rakesh Singh Rawat',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Home'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('About'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Projects'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Contact'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}