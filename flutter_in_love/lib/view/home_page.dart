import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_in_love/common/aside_nav_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipOval(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4ckJxBXP8YOY_8oXaf1OlpvABtSr1wHk2Dg&s",
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "345",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                  fontSize: 55,
                ),
              ),
              Positioned(
                top: 175,
                child: Text(
                  "Days",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lora',
                    fontSize: 26,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.green,
                padding: EdgeInsets.only(left: 40),
                child: ClipOval(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4ckJxBXP8YOY_8oXaf1OlpvABtSr1wHk2Dg&s",
                    width: 85,
                    height: 85,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                // color: Colors.blue,
                padding: EdgeInsets.only(right: 40),
                child: ClipOval(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4ckJxBXP8YOY_8oXaf1OlpvABtSr1wHk2Dg&s",
                    width: 85,
                    height: 85,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
