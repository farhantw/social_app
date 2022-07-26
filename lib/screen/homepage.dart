import 'package:first_provider_demo/screen/profiescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/notifier/bottomnav.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/bottomnavigationbar.dart';
import 'homescreen.dart';
import 'messagescreen.dart';
import 'notificationscreen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final page = [Homescreen(), NotificationScreen(), ProfileScreen()];

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
        // extendBodyBehindAppBar: true,


        appBar: AppBar(
          title: Consumer<BottomnavNotifier>(
            builder: (context, bottomnave, index) {
              return title[bottomnave.currentIndex];
            },
          ),
          leading: Builder(
            builder: (context) {
          return  GestureDetector(
                 child: Icon(Icons.account_circle),
                onTap: () => Scaffold.of(context).openDrawer(),
              );

            }
          ),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MessageScreen()
              ));
            },icon: Icon(Icons.mark_as_unread_sharp)),
            SizedBox(width: 5.0,)
          ],

          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        drawer: const DrawerWidget(),
        bottomNavigationBar: const BottmNavigationbarWidget(),
        body: Consumer<BottomnavNotifier>(
          builder: (context, bottomnave, index) {
            return page[bottomnave.currentIndex];
          },
        ),
      ),
    );
  }
}
