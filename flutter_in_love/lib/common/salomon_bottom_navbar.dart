import 'package:flutter/material.dart';
import 'package:flutter_in_love/common/aside_nav_drawer.dart';
import 'package:flutter_in_love/controllers/bottom_navigation_controller.dart';
import 'package:flutter_in_love/view/home_page.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class SalomonNavigationBar extends StatefulWidget {
  const SalomonNavigationBar({super.key});

  @override
  State<SalomonNavigationBar> createState() => _SalomonNavigationBarState();
}

class _SalomonNavigationBarState extends State<SalomonNavigationBar> {
  BottomNavigationController _controller =
      Get.put(BottomNavigationController());
  var _currentIndex = 0;

  final screens = [HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: Obx(
        () => IndexedStack(
          children: screens,
          index: _controller.selectedIndex.value,
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple),

          /// Partner Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Songs
          SalomonBottomBarItem(
            icon: Icon(Icons.music_note),
            title: Text("Songs"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
