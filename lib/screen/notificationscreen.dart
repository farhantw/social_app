import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context,index){
          return ListTile(
            title: Text("Profie"),
            subtitle: Text("online"),
            trailing: Icon(Icons.arrow_drop_down_sharp),
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2022/07/12/18/04/child-7317938_960_720.jpg",
                )),
          );
          }
      ),
    );
  }
}
