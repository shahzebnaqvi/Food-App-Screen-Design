import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: CircleAvatar(child: Icon(Icons.apps)),
          actions: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://png.pngtree.com/png-vector/20190704/ourlarge/pngtree-businessman-user-avatar-free-vector-png-image_1538405.jpg"),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.only(
            right: 10,
            left: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_sharp),
                  Text("Denpasar , IDN "),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
              TextField(
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFbdc6cf),
                ),
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  hintText: ' Search Your Food',
                  contentPadding: EdgeInsets.only(
                    left: 0,
                    top: 0,
                    bottom: 0,
                  ),
                ),
              ),
              multiplecolorheading("Food", " Categories"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red, shape: StadiumBorder()),
                        onPressed: () {},
                        child: Text("All foods")),
                    category(),
                    category(),
                    category(),
                    category(),
                    category(),
                    category(),
                  ],
                ),
              ),
              multiplecolorheading("Favourites", " Food"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    product(),
                    product(),
                    product(),
                    product(),
                    product(),
                    product(),
                    product(),
                    product(),
                    product(),
                    product(),
                  ],
                ),
              ),
              multiplecolorheading("Other", " Food"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    product1(),
                    product1(),
                    product1(),
                    product1(),
                    product1(),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}

Widget multiplecolorheading(String text1, text2) {
  return Row(
    children: [
      Text(
        text1,
        style: TextStyle(color: Colors.red),
      ),
      Text(
        text2,
        style: TextStyle(color: Colors.black),
      )
    ],
  );
}

Widget category() {
  return ElevatedButton.icon(
    style:
        ElevatedButton.styleFrom(primary: Colors.red, shape: StadiumBorder()),
    onPressed: () {},
    label: Text("All foods"),
    icon: CircleAvatar(
      backgroundImage: NetworkImage(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmO3mYJcyqD4gK4RAQHySJ5no7JE7uexCCeQ&usqp=CAU"),
      radius: 10,
    ),
  );
}

Widget product() {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(top: 70, right: 10, left: 10),
        padding: EdgeInsets.only(right: 15, left: 15, top: 35, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Orignal Fried Thrimp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Homemade chief",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ],
            )
          ],
        ),
      ),
      Stack(alignment: Alignment.topRight, children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              "https://png.pngtree.com/png-vector/20190704/ourlarge/pngtree-businessman-user-avatar-free-vector-png-image_1538405.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Text(
            "\$6.9",
            style: TextStyle(color: Colors.red),
          ),
        )
      ]),
    ],
  );
}

Widget product1() {
  return Stack(alignment: Alignment.topRight, children: [
    Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          margin: EdgeInsets.only(top: 10, right: 10, left: 10),
          padding: EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.network(
                    'https://static.toiimg.com/photo/53110049.cms',
                    // width: 300,
                    height: 120,
                    fit: BoxFit.fitWidth),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Chees pizza",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Text(
        "\$6.9",
        style: TextStyle(color: Colors.red),
      ),
    ),
  ]);
}
