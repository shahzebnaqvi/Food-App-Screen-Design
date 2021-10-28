import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 5,
        leading: Icon(Icons.arrow_back, color: Colors.red),
        title: TextField(
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
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://png.pngtree.com/png-vector/20190704/ourlarge/pngtree-businessman-user-avatar-free-vector-png-image_1538405.jpg"),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            right: 10,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.centerRight, children: [
                    circlecontainer(),
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )
                  ]),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red,
                          width: 5,
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmO3mYJcyqD4gK4RAQHySJ5no7JE7uexCCeQ&usqp=CAU"))),
                  ),
                  Stack(alignment: Alignment.centerLeft, children: [
                    circlecontainer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ])
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text("Orignal Fried Shrimp"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shrimp Category"),
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
                          Icons.star_half,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ],
                    )
                  ],
                ),
                trailing: Text(
                  "\$6.9",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur velit ac vestibulum finibus, velit odio pharetra sapien, non varius risus enim "),
              SizedBox(
                height: 10,
              ),
              Text(
                "Read more",
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_sharp,
                    color: Colors.red,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "0.5 Km Distance",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.remove_circle_rounded,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("1"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.add_circle,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red, shape: StadiumBorder()),
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart_outlined),
                      label: Text("Add To Cart")),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
        ],
        backgroundColor: Colors.pink[100],
        fixedColor: Colors.red,
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
        color: Colors.black,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.red, width: 2),
        image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
            image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkc6qNgjJi_rzszFB0hSv7vh0jazpZuqVgSJdPS-L43qK9JOeA-q-QBBbBhDj2hXvhkQk&usqp=CAU",
            ))),
  );
}
