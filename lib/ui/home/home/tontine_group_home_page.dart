import 'package:flutter/material.dart';

class TontineGroupHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Picture at the top left
          Container(
            margin: EdgeInsets.all(16.0),
            child: ClipOval(
              child: Image.network(
                'https://example.com/your-image-url.jpg',
                width: 80.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text following the picture
          Text(
            'hello kossi',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),

          // Tile below
          ListTile(
            title: Text('premieur group'),
            subtitle: Text('GHC 0'),
          ),

          // Elevated buttons below
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed:  () {
                  // Handle button press
                },
                child: Text('Invite members'),
                style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                child: Text('Notify members'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
