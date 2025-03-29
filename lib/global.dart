import 'package:flutter/material.dart';

final List<Map<String, dynamic>> planets = [
  {
    'name': 'Sun',
    'desc': 'The giant star at the center of our solar system.',
    'image': 'assets/sun.gif',
    'color': Colors.orangeAccent,
    'type': 'Star',
    'composition': 'Hydrogen and Helium',
    'diameter': 1392700, // in km
    'mass': 1.989e30, // in kg
    'orbitDayPeriod': 0, // The Sun doesn't orbit, so it's 0
    'orbitYearPeriod': 0, // The Sun's orbital period is the same as the solar system's
  },
  {
    'name': 'Mercury',
    'desc': 'The smallest planet, closest to the Sun.',
    'image': 'assets/mercury.gif',
    'color': Colors.grey,
    'type': 'Terrestrial',
    'composition': 'Rocky, Iron-rich core',
    'diameter': 4879, // in km
    'mass': 3.3011e23, // in kg
    'orbitDayPeriod': 59, // in Earth days
    'orbitYearPeriod': 88, // in Earth days
  },
  {
    'name': 'Venus',
    'desc': 'A hot, volcanic planet with a thick atmosphere.',
    'image': 'assets/venus.gif',
    'color': Colors.orange,
    'type': 'Terrestrial',
    'composition': 'Rocky, Thick atmosphere',
    'diameter': 12104, // in km
    'mass': 4.867e24, // in kg
    'orbitDayPeriod': 243, // in Earth days
    'orbitYearPeriod': 225, // in Earth days
  },
  {
    'name': 'Earth',
    'desc': 'Our home, filled with life and beauty.',
    'image': 'assets/earth.gif',
    'color': Colors.blue,
    'type': 'Terrestrial',
    'composition': 'Rocky, Water-rich atmosphere',
    'diameter': 12742, // in km
    'mass': 5.972e24, // in kg
    'orbitDayPeriod': 1, // in Earth days
    'orbitYearPeriod': 365.25, // in Earth days
  },
  {
    'name': 'Moon',
    'desc': 'Earth’s natural satellite, lighting up our night sky.',
    'image': 'assets/moon.gif',
    'color': Colors.white70,
    'type': 'Natural Satellite',
    'composition': 'Rocky, Silicate',
    'diameter': 3474, // in km
    'mass': 7.34767309e22, // in kg
    'orbitDayPeriod': 27.3, // in Earth days (Moon's orbital period around Earth)
    'orbitYearPeriod': 0, // The Moon doesn’t have its own year period, as it orbits Earth
  },
  {
    'name': 'Mars',
    'desc': 'The Red Planet, with towering volcanoes.',
    'image': 'assets/mars.gif',
    'color': Colors.red,
    'type': 'Terrestrial',
    'composition': 'Rocky, Iron oxide surface',
    'diameter': 6779, // in km
    'mass': 6.4171e23, // in kg
    'orbitDayPeriod': 1.03, // in Earth days
    'orbitYearPeriod': 687, // in Earth days
  },
  {
    'name': 'Jupiter',
    'desc': 'The largest planet, with a giant red storm.',
    'image': 'assets/jupiter.gif',
    'color': Colors.brown,
    'type': 'Gas Giant',
    'composition': 'Mostly Hydrogen and Helium',
    'diameter': 139820, // in km
    'mass': 1.8982e27, // in kg
    'orbitDayPeriod': 0.41, // in Earth days
    'orbitYearPeriod': 4333, // in Earth days
  },
  {
    'name': 'Saturn',
    'desc': 'Famous for its stunning ring system.',
    'image': 'assets/saturn.gif',
    'color': Colors.yellow,
    'type': 'Gas Giant',
    'composition': 'Mostly Hydrogen and Helium',
    'diameter': 116460, // in km
    'mass': 5.6834e26, // in kg
    'orbitDayPeriod': 0.45, // in Earth days
    'orbitYearPeriod': 10759, // in Earth days
  },
  {
    'name': 'Uranus',
    'desc': 'An ice giant with a bluish-green hue.',
    'image': 'assets/uranus.gif',
    'color': Colors.cyan,
    'type': 'Ice Giant',
    'composition': 'Water, Ammonia, Methane',
    'diameter': 50724, // in km
    'mass': 8.6810e25, // in kg
    'orbitDayPeriod': 0.72, // in Earth days
    'orbitYearPeriod': 30687, // in Earth days
  },
  {
    'name': 'Neptune',
    'desc': 'The windiest planet, deep blue in color.',
    'image': 'assets/neptune.gif',
    'color': Colors.blueAccent,
    'type': 'Ice Giant',
    'composition': 'Water, Ammonia, Methane',
    'diameter': 49244, // in km
    'mass': 1.02413e26, // in kg
    'orbitDayPeriod': 0.67, // in Earth days
    'orbitYearPeriod': 60190, // in Earth days
  },
];
