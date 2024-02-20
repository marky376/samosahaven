import 'package:flutter/material.dart';

void main() {
  runApp(SamosaHavenApp());
}

class SamosaHavenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samosa Haven',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Setting debugShowCheckedModeBanner to false
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Samosa Haven'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Header with logo
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   'assets/logo.png',
                  //   width: 100.0,
                  //   height: 100.0,
                  //   // Adjust the image path as per your project structure
                  // ),
                  SizedBox(height: 10.0),
                  Text(
                    'Delicious Samosas Delivered to Your Doorstep!',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // Section showcasing samosas
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Our Samosas:',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  // You can add images and descriptions of different types of samosas here
                  Text('1. Veg Samosa'),
                  Text('2. Chicken Samosa'),
                  Text('3. Paneer Samosa'),
                  // Add more samosa options as needed
                ],
              ),
            ),
            // Information about delivery options
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Delivery Options:',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text('We offer delivery within [your area].'),
                  Text('Delivery charges may apply.'),
                  // Add more delivery information as needed
                ],
              ),
            ),
            // Contact information
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Contact Us:',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text('Phone: [your phone number]'),
                  Text('Email: [your email address]'),
                  // Add more contact information as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
