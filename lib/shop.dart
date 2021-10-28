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
  return Container(
    color: Colors.red,
    margin: EdgeInsets.all(3),
    padding: EdgeInsets.only(right: 15, left: 15, top: 50, bottom: 15),
    child: Column(
      children: [
        Text("Orignal Fried Thrimp"),
        Text("Orignal Fried Thrimp"),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            ),
          ],
        )
      ],
    ),
  );
}

Widget circlecontainer() {
  return Stack(children: [
    Container(
      margin: EdgeInsets.all(1),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.red, width: 2),
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.dstATop),
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkc6qNgjJi_rzszFB0hSv7vh0jazpZuqVgSJdPS-L43qK9JOeA-q-QBBbBhDj2hXvhkQk&usqp=CAU",
              ))),
    ),
    CircleAvatar(
      backgroundImage: NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkc6qNgjJi_rzszFB0hSv7vh0jazpZuqVgSJdPS-L43qK9JOeA-q-QBBbBhDj2hXvhkQk&usqp=CAU",
      ),
    ),
    Text("asas")
  ]);
}
