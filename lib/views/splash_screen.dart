import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart'; // Import video player package
import 'home_page.dart';

var time = 0;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  VideoPlayerController? _videoController; // Video controller

  @override
  void initState() {
    super.initState();

    // Initialize video controller
    _videoController = VideoPlayerController.asset('assets/splashvideo.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoController?.play(); // Play the video after initialization
        _videoController?.setLooping(true); // Loop the video
      });

    // Start the timer for navigation
    _timer = Timer.periodic(
      Duration(seconds: 5),
          (timer) {
        setState(() {
          if (mounted) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return SpaceExplorerScreen().animate().fadeIn(
                      duration: 2000.ms,
                    );
                  },
                ));
          }
        });
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _videoController?.dispose(); // Dispose the video controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF000428), Color(0xFF004e92)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              // Display the video if it's initialized
              if (_videoController?.value.isInitialized ?? false)
                VideoPlayer(_videoController!),

              // Show a loading spinner until the video is initialized
              if (!(_videoController?.value.isInitialized ?? false))
                Center(child: CircularProgressIndicator()),

              // The overlay text
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 70.0),
                  child: Text(
                    'SPACE EXPLORER',
                    style: GoogleFonts.orbitron(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 28,
                      ),
                    ),
                  ).animate().slideInLeft(
                    duration: 1500.ms,
                    curve: Curves.easeInOut,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
