import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../global.dart';
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
          Positioned.fill(child: StarBackground()),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu, color: Colors.white, size: 30),
                      Shimmer.fromColors(
                        baseColor: Colors.white,
                        highlightColor: Colors.blueAccent,
                        child: Text('Space Explorer',
                            style: GoogleFonts.orbitron(
                                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                      ),
                      Icon(Icons.notifications, color: Colors.white, size: 30),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for a planet...',
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.white70),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.8,
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
                                imagePath: planets[index]['image'],
                              ),
                            ),
                          );
                        },
                        child: PlanetCard(
                          name: planets[index]['name'],
                          description: planets[index]['desc'],
                          imagePath: planets[index]['image'],
                          color: planets[index]['color'],
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