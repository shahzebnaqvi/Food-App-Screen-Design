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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                    alignment: Alignment.centerRight,
                    children: [circlecontainer(), Icon(Icons.arrow_back)]),
                Container(
                  margin: EdgeInsets.all(5),
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 5),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.w3schools.com/howto/img_avatar.png"))),
                ),
                Stack(
                    alignment: Alignment.centerLeft,
                    children: [circlecontainer(), Icon(Icons.arrow_back_sharp)])
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text("Orignal Fried Shrimp"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shrimp Category"),
                  Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star)
                    ],
                  )
                ],
              ),
              trailing: Text(
                "6.9",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque, velit ac vestibulum finibus, velit odio pharetra sapien, non varius risus enim ac ex. Integer"),
            Text("See more")
          ],
        ),
      ),
    );
  }
}

Widget circlecontainer() {
  return Container(
    margin: EdgeInsets.all(1),
    width: 70,
    height: 70,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blue, width: 2),
        image: DecorationImage(
            image: NetworkImage(
                "https://www.w3schools.com/howto/img_avatar.png"))),
  );
}
