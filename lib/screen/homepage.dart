import 'package:first_provider_demo/screen/profiescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/notifier/bottomnav.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/bottomnavigationbar.dart';
import 'homescreen.dart';
import 'notificationscreen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);


  final page = [

    Homescreen(),
    NotificationScreen(),
    ProfileScreen()

  ];


  final title = [
    Text("Home Screen"),
    Text("Notification"),
    Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<BottomnavNotifier>(
      create: (context) => BottomnavNotifier(),
      child: Scaffold(
        appBar: AppBar(

          title:   Consumer<BottomnavNotifier>(
            builder: (context, bottomnave, index){
              return  title[bottomnave.currentIndex];
            },
          ),

        ),

        drawer: const DrawerWidget(),
        bottomNavigationBar:  const BottmNavigationbarWidget(),
        body:  Consumer<BottomnavNotifier>(
          builder: (context, bottomnave, index){
            return page[bottomnave.currentIndex];
          },
        ),




      ),
    );
  }
}







