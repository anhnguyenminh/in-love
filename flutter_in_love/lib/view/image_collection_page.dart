import 'package:flutter/material.dart';

class ImagesCollectionPage extends StatefulWidget {
  const ImagesCollectionPage({super.key});

  @override
  State<ImagesCollectionPage> createState() => _ImagesCollectionPageState();
}

class _ImagesCollectionPageState extends State<ImagesCollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Image Collection"),
    );
  }
}
