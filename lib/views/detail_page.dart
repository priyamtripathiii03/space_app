import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class PlanetDetailScreen extends StatelessWidget {
  final String name;
  final String description;
  final String imagePath;
  final String type;
  final String composition;
  final int diameter;
  final double mass;

  PlanetDetailScreen({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.type,
    required this.composition,
    required this.diameter,
    required this.mass,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.blueAccent,
          child: Text(
            name,
            style: GoogleFonts.orbitron(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          // Background Image Container
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main Content
          SingleChildScrollView(  // Wrap the body with SingleChildScrollView to handle overflow
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Hero Image
                  Hero(
                    tag: name,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        imagePath,
                        width: 280,
                        height: 280,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Planet Name
                  Text(
                    name,
                    style: GoogleFonts.orbitron(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 15,
                          color: Colors.blue,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  // Planet Details Card
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      color: Colors.black.withOpacity(0.7),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20), // Add some space
                            Text(
                              "Type: ",
                              style: GoogleFonts.orbitron(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              type,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Diameter: ",
                              style: GoogleFonts.orbitron(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              diameter.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Mass: ",
                              style: GoogleFonts.orbitron(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              mass.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Composition: ",
                              style: GoogleFonts.orbitron(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              composition,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Description",
                              style: GoogleFonts.orbitron(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              description,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
