import 'package:flutter/material.dart';

class HotelDetailsPage extends StatelessWidget {
  // Define some sample data for the hotel
  final String hotelName = 'Medina Hotel';
  final String hotelLocation = 'Saudi Arabia - Medina';
  final double hotelRating = 8.9;
  final String hotelImage = 'assets/images/room.jpg'; // Use the Image.asset widget to display a local image
  final String hotelDescription =
      'And his other birth in addition to increasing the number of text is an example that can be replaced in the same space. This text was generated from an Arabic generator where you can generate this text – or many other texts in addition to increasing... read more';
  final double hotelPrice = 350;
  final String checkInDate = 'Thursday, December 15th';
  final String checkOutDate = 'Friday, December 16th';
  final int numberOfRooms = 1;
  final int numberOfGuests = 2;
  final List<String> hotelFeaturesList = [ // Fix the typo in the variable name
    'Feature No. 1',
    'Feature No. 2',
    'Feature No. 3',
    'Feature No. 4',
    'Feature No. 5',
    'Feature No. 6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$hotelName\n$hotelLocation'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          // Display the hotel rating using one icon and text
          Column( // Change the Row widget to a Column widget
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  Text(
                    '$hotelRating',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Text(
                '$hotelRating',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Display the hotel image

            ClipRRect(
           borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
              'assets/images/OIP.png',
              width: 450,
              height: 200,
              fit: BoxFit.cover,
            ),
            ),

            // Display the hotel description
            Padding(
              padding: const EdgeInsets.all(16.0),

            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0), // Add desired padding

                 child: Text(
                  "Hotel Describtion",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  hotelDescription,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
               Text(
                  'Booking details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                ],

            ),
            // Display the booking details section
            Card(
              margin: const EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),


                     Stack(
                      children: [
                        // Check-in section
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.orange,
                            size: 36.0,
                          ),
                        ),
                        Positioned(
                          left: 40.0,
                          top: 0,
                          child: Text(
                            'Thursday, December 15th',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 40.0,
                          child: Icon(
                            Icons.hotel,
                            color: Colors.orange,
                            size: 36.0,
                          ),
                        ),
                        Positioned(
                          left: 40.0,
                          top: 40.0,
                          child: Text(
                            '1 room. 2 adults',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),

                        // Check-out section
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.orange,
                            size: 36.0,
                          ),
                        ),
                        Positioned(
                          right: 40.0,
                          top: 0,
                          child: Text(
                            'Friday, December 16th',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 40.0,
                          child: Icon(
                            Icons.people,
                            color: Colors.orange,
                            size: 36.0,
                          ),
                        ),
                        Positioned(
                          right: 40.0,
                          top: 40.0,
                          child: Text(
                            '2 adults',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Display the features section
            Card(
              margin: const EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GridView.count(
                      crossAxisCount: 3, // Number of columns
                      childAspectRatio: 4.0, // Adjust this value to change the size of the boxes
                      shrinkWrap: true, // This will make the GridView take the minimum space
                      physics: NeverScrollableScrollPhysics(), // This will disable the scrolling for GridView
                      children: hotelFeaturesList.map((feature) {
                        return Container(
                          color: Colors.transparent, // This will make the container transparent
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.blue), // Add your desired icon here
                              SizedBox(width: 8.0), // Add some spacing between the icon and the text
                              Text(feature),
                            ],
                          ),
                        );
                      }).toList(),
                    )

                  ],
                ),
              ),
            ),
            // Display the pricing information and the select button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${hotelPrice} SAR per person',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement the functionality for selecting the rooms
                    },
                    child: Row(
                      children: [
                        Text('Select the rooms'),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


