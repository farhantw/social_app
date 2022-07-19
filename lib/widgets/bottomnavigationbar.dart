import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/notifier/bottomnav.dart';

class BottmNavigationbarWidget extends StatelessWidget {
  const BottmNavigationbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomnavNotifier>(
      builder: (context, bottomnave, index){
        return BottomNavigationBar(
          currentIndex: bottomnave.currentIndex,
          onTap: (index){
            bottomnave.bottomnav(index);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active),label: "Notifications"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")

          ],
        );
      },

    );
  }
}
