import 'package:flutter/material.dart';
import 'package:wisata_mobile_7/materimodulscreens/pertemuan5.dart';

void main(){
runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wisata mobile',
      debugShowCheckedModeBanner: false,
      home: formScreen(),
    );
  }
}