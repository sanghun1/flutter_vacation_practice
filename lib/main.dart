import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Friday, February 21",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Go to the vacation",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Search anything...",
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.blueGrey,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(size.width * 1 / 30),
                child: AspectRatio(
                  aspectRatio: 1.5 / 1,
                  child: Image.asset(
                    "assets/banner.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categorys",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCategory("assets/camping.jpg", "Camping"),
                    SizedBox(
                      width: 20,
                    ),
                    buildCategory("assets/vacation.jpg", "Vacation"),
                    SizedBox(
                      width: 20,
                    ),
                    buildCategory("assets/camping.jpg", "Camping"),
                    SizedBox(
                      width: 20,
                    ),
                    buildCategory("assets/vacation.jpg", "Vacation"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.near_me), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
        ],
      ),
    );
  }

  Widget buildCategory(String imageUrl, String title) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1 / 0.7,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(imageUrl),
              ),
            ),
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
