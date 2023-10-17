import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Roboto'),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            )),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30.0),
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Find Your",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Inspiration",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black87,
                          ),
                          hintText: "Search you're looking for",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Promo Today",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        promoCard("assets/images/one.jpg"),
                        promoCard("assets/images/two.jpg"),
                        promoCard("assets/images/three.jpg"),
                        promoCard("assets/images/four.jpg")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/three.jpg"),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: const [
                              0.3,
                              0.9
                            ],
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.1)
                            ]),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Best Design",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget promoCard(String image) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [
                  0.1,
                  0.8
                ],
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.1)
                ]),
          ),
        ),
      ),
    );
  }
}
