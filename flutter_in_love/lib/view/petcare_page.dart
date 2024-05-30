import 'package:flutter/material.dart';

class PetCarePage extends StatefulWidget {
  const PetCarePage({super.key});

  @override
  State<PetCarePage> createState() => _PetCarePageState();
}

class _PetCarePageState extends State<PetCarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Pet Care"),
    );
  }
}
