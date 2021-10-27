import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: TextField(
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFFbdc6cf),
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            hintText: ' Search Your Food',
            contentPadding: EdgeInsets.only(left: 0, top: 0, bottom: 0),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage:
                NetworkImage("https://www.w3schools.com/howto/img_avatar.png"),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.w3schools.com/howto/img_avatar.png"))),
                ),
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 5),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.w3schools.com/howto/img_avatar.png"))),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.w3schools.com/howto/img_avatar.png"))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
