import 'package:flutter/material.dart';
import 'package:tontineo_mobile_app/ui/home/home/tontine_group_home_page.dart';


class TontineGroupCreation extends StatelessWidget {
  const TontineGroupCreation({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tontine Group Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TontineGroupCreator(),
    );
  }
}

class TontineGroupCreator extends StatelessWidget {
  const TontineGroupCreator({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('lib/assets/images/tontineo_logo.png', width: 40, height: 40),
            const Text('Hello Kossi, \nYou have not created a Tontine yet!'),
            const Icon(Icons.group),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Column with TextFormFields
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Group Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Set Rules',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Create Tontine Group button
            GestureDetector(
              onTap: () {
                // Navigate to the next screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TontineGroupHomepage()),
                );
              },
              child: ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Signup()),
    );
  },
  child: const Text('Create Tontine Group'),
),

            ),
          ],
        ),
      ),
    );
  }
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TontineGroupHomepage(),
    );
  }
}
