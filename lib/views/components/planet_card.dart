import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../detail_page.dart';

class PlanetCard extends StatelessWidget {
  final String name;
  final String description;
  final String imagePath;
  final Color color;
  final String type;
  final String composition;
  final int diameter;
  final double mass;

  const PlanetCard({super.key, required this.name, required this.description, required this.imagePath, required this.color,required this.type, required this.composition, required this.diameter, required this.mass});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlanetDetailScreen(
              name: name,
              description: description,
              imagePath: imagePath,
              type: type,
              composition: composition,
              diameter: diameter,
              mass: mass,
            ),
          ),
        );
      },
      child: Card(
        elevation: 10,
        color: color.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Hero(
                tag: name,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.blueAccent,
              child: Text(
                name,
                style: GoogleFonts.orbitron(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(blurRadius: 10, color: Colors.white, offset: Offset(0, 0))
                  ],
                ),
              ),
            ),

            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Type: " + type,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}