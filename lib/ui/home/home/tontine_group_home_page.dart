import 'package:flutter/material.dart';
import 'package:tontineo_mobile_app/ui/home/home/invite_members_page.dart';

class TontineGroupHomepage extends StatelessWidget {
  const TontineGroupHomepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Picture at the top left
          Container(
            margin: const EdgeInsets.all(16.0),
            child: ClipOval(
              child: Image.network(
                'https://media.istockphoto.com/id/77931645/photo/woman-and-young-girl-outdoors-with-people-in-background.jpg?s=1024x1024&w=is&k=20&c=ebHwY0O_SbqVenmJJw9DSh-ANmdgxyI_pO3OwmwE6VU=',
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
                  primary: Colors.green,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the next screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InviteMembersPage()),
                  );
                },
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InviteMembersPage()),
                    );
                  },
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
