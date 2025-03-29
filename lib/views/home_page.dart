import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../global.dart';
import 'components/planet_card.dart';
import 'detail_page.dart';

class SpaceExplorerScreen extends StatefulWidget {
  @override
  _SpaceExplorerScreenState createState() => _SpaceExplorerScreenState();
}

class _SpaceExplorerScreenState extends State<SpaceExplorerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background image container
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'), // Your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                // App bar section with larger icons and text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu, color: Colors.white, size: 35),
                      Shimmer.fromColors(
                        baseColor: Colors.white,
                        highlightColor: Colors.blueAccent,
                        child: Text(
                          'Space Explorer',
                          style: GoogleFonts.orbitron(
                              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Icon(Icons.notifications, color: Colors.white, size: 35),
                    ],
                  ),
                ),
                // Search bar with larger padding and font size
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for a planet...',
                      hintStyle: TextStyle(color: Colors.white70, fontSize: 16),
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.white70, size: 30),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                // Expanded GridView with larger items
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.85, // Adjusted to make items bigger
                    ),
                    itemCount: planets.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlanetDetailScreen(
                                name: planets[index]['name'],
                                description: planets[index]['desc'],
                                type: planets[index]['type'],
                                imagePath: planets[index]['image'],
                                composition: planets[index]['composition'],
                                diameter: planets[index]['diameter'],
                                mass: planets[index]['mass'],
                              ).animate().flipV(
                                duration: 2000.ms,
                              ),
                            ),
                          );
                        },
                        child: PlanetCard(
                          name: planets[index]['name'],
                          description: planets[index]['desc'],
                          imagePath: planets[index]['image'],
                          type: planets[index]['type'],
                          color: planets[index]['color'],
                          composition: planets[index]['composition'],
                          diameter: planets[index]['diameter'],
                          mass: planets[index]['mass'],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
