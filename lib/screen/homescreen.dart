import 'package:flutter/material.dart';
import '../widgets/Commentbottomsheet.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          height: MediaQuery.of(context).size.height * 0.2 - 40,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 5.0),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2021/09/26/09/55/seal-6656983_960_720.jpg",
                    ),
                  ),
                );
              }),
        ),



        Container(
            height: MediaQuery.of(context).size.height * 0.6 + 20,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                  const    ListTile(
                        title: Text("Profie"),
                        subtitle: Text("online"),
                        trailing: Icon(Icons.storage),
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2022/07/12/18/04/child-7317938_960_720.jpg",
                        )),
                      ),
                      Image.network(
                        "https://cdn.pixabay.com/photo/2022/07/12/15/36/tree-7317683_960_720.jpg",
                        height: 300,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const[
                                Text("Like"),
                                Icon(Icons.favorite_border)
                              ],
                            ),
                            GestureDetector(
                                onTap: () {
                                  MyBottomSheet.bottomsheet(context);
                                },
                                child: Row(children: const[
                                  Text("Comment"),
                                  Icon(Icons.message)
                                ])),
                            Row(children: [Text("Share"), Icon(Icons.share)])
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ))
      ],
    );
  }
}
