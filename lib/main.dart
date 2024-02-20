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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to shopping cart screen
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Place Order'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderForm()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Header with text-logo
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Samosa Haven',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
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
                  Text('1. Waru Samosa'),
                  Text('2. Ndengu Samosa'),
                  Text('3. Veg Samosa'),
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
                  Text('We offer delivery within Hostels and Bangik area.'),
                  Text('Delivery charges are free.'),
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
                  Text('Phone: 0742138182 or 0757546180'),
                  // Add more contact information as needed
                ],
              ),
            ),
            // Order button with form
            Container(
              padding: EdgeInsets.all(20.0),
              child: OrderForm(),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderForm extends StatefulWidget {
  @override
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  int _quantity = 1;
  bool _includeKachumbari = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Order Now:',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Row(
          children: <Widget>[
            Text('Quantity:'),
            SizedBox(width: 10.0),
            DropdownButton<int>(
              value: _quantity,
              items: [1, 2, 3, 4, 5].map((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
              onChanged: (int? newValue) { // Update argument type to int?
                setState(() {
                  _quantity = newValue ?? 1;
                });
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Checkbox(
              value: _includeKachumbari,
              onChanged: (bool? newValue) { // Update argument type to bool?
                setState(() {
                  _includeKachumbari = newValue ?? false;
                });
              },
            ),
            Text('Include Kachumbari'),
          ],
        ),
        ElevatedButton( // Change RaisedButton to ElevatedButton
          onPressed: () {
            // Calculate total price
            int totalPrice = _quantity * 10; // Each samosa costs 10 KSH
            if (_includeKachumbari) {
              // Kachumbari is free
              totalPrice += 0;
            }
            // Show dialog with total price and TILL number
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Order Summary'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Total Price: $totalPrice KSH'),
                      Text('Pay to TILL NO. 4154162'),
                    ],
                  ),
                  actions: <Widget>[
                    TextButton( // Change FlatButton to TextButton
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Place Order'),
        ),
      ],
    );
  }
}
