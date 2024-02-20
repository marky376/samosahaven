class SamosaHavenApp extends StatelessWidget {
  const SamosaHavenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: const Text('Samosa Haven'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samosa Haven'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Header with logo
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    width: 100.0,
                    height: 100.0,
                    // Adjust the image path as per your project structure
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Delicious Samosas Delivered to Your Doorstep!',
                    style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // Section showcasing samosas
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Our Samosas:',
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  // You can add images and descriptions of different types of samosas here
                  const Text('1. Veg Samosa'),
                  const Text('2. Chicken Samosa'),
                  const Text('3. Paneer Samosa'),
                  // Add more samosa options as needed
                ],
              ),
            ),
            // Information about delivery options
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Delivery Options:',
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  const Text('We offer delivery within [your area].'),
                  const Text('Delivery charges may apply.'),
                  // Add more delivery information as needed
                ],
              ),
            ),
            // Contact information
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Contact Us:',
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  const Text('Phone: [your phone number]'),
                  const Text('Email: [your email address]'),
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
