import 'package:flutter/material.dart';

void main () {
  runApp(
  
  //Material App starts 
  
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(title:Text("First App"),
      backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                                  //Network Image 
                       Text(
                        "Network Image",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[800],
                        ),
                       ),
                       SizedBox(height: 16),
                       Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 15,
                        offset: Offset(0, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image(
                      image: AssetImage('assets/flutter.png'),
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,
                      // Error handling for asset image
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.image_not_supported, 
                                   size: 50, 
                                   color: Colors.grey[600]),
                              SizedBox(height: 8),
                              Text(
                                'Asset Image\n',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Add image to assets/images/',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                
                SizedBox(height: 30),
                
                // Additional styling example - Circular image
                Text(
                  'Circular Style',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[800],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                    backgroundColor: Colors.grey[300],
                    child: Container(), // Fallback if image fails
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}




