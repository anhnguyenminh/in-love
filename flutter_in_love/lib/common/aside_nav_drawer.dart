import 'package:flutter/material.dart';
import 'package:flutter_in_love/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_in_love/utils/app_constants.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: AppUtils.screenWidth(context),
        color: Color(0xFFFBB2CA),
        child: Column(
          children: [
            Container(
              color: Color(0xFF93004D),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFB967C0),
                    child: const Text('KN'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Katherine Nguyen",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Active",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MenuItem(
              label: "Our Memories",
              icon: Icons.book,
              iconColor: Colors.white,
              onTap: () {
                Get.back(closeOverlays: true);
                Get.toNamed(Routes.OURMEMORIES);
              },
            ),
            MenuItem(
              label: "Images Collection",
              icon: Icons.collections,
              iconColor: Colors.white,
              onTap: () {
                Get.back(closeOverlays: true);
                Get.toNamed(Routes.IMAGESCOLLECTION);
              },
            ),
            MenuItem(
              label: "Challenges",
              icon: Icons.emoji_events,
              iconColor: Colors.white,
              onTap: () {
                Get.back(closeOverlays: true);
                Get.toNamed(Routes.CHALLENGES);
              },
            ),
            MenuItem(
              label: "Pet Care",
              icon: Icons.pets,
              iconColor: Colors.white,
              onTap: () {
                Get.back(closeOverlays: true);
                Get.toNamed(Routes.PETCARE);
              },
            ),
            MenuItem(
              label: "Partner Information",
              icon: Icons.favorite,
              iconColor: Colors.white,
              onTap: () {
                Get.back(closeOverlays: true);
                Get.toNamed(Routes.PARTNERINFO);
              },
            ),
            MenuItem(
              label: "About Us",
              icon: Icons.info,
              iconColor: Colors.white,
              onTap: () {
                Get.back(closeOverlays: true);
                Get.toNamed(Routes.AFTERCREDIT);
              },
            ),
            MenuItem(
              label: "App Setting",
              icon: Icons.settings,
              iconColor: Colors.white,
              onTap: () {
                Get.back(closeOverlays: true);
                Get.toNamed(Routes.SETTINGAPP);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget MenuItem(
      {required String label,
      required IconData icon,
      required Color iconColor,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor,
        size: 20,
      ),
      title: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: onTap,
    );
  }
}
