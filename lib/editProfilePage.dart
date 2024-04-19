import 'package:flutter/material.dart';
import 'package:mid_practice/profilePage.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // To center the column vertically
          children: <Widget>[
            CircleAvatar(
              radius: 50.0, // Adjust the size as needed
              backgroundImage: AssetImage('assets/your_image.png'), // Make sure you have this image in your assets
              // For demonstration, you might use:
              // backgroundImage: NetworkImage('URL_TO_AN_IMAGE'),
            ),
            SizedBox(height: 20), // Provide space between the avatar and the text
            Text('Name:'),
            Text('Enrolllment no:'),
            Text('Contact no:'),
            Text('Guardian email address:'),
            Text('Guardian contact no:'),
            Text('sem1:'),
            Text('sem2:'),
            Text('sem3:'),
            SizedBox(height: 20), // Space before the button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );

              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
