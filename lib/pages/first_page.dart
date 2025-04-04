// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:flutter_application_1/util/first_page_card.dart';
import 'package:flutter_application_1/widgets/first_page_card.dart';
import 'package:flutter_application_1/widgets/first_page_listile.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 1,
        // shadowColor: const Color.fromARGB(255, 150, 148, 148),
        title: Text(
          'Discover',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(Icons.search, color: Colors.white),
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(Icons.notifications, color: Colors.white),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  // scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Text(
                          'Jungle',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        'Beach',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        'Mountain',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        'WaterFall',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        'Valleys',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        'Ravines',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        'Streams',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    FirstPageCard(
                      image: 'pexels-trang-doan-1092730.jpg',
                      bigText: 'La Casta',
                      smallText: 'Peru, South America',
                    ),
                    FirstPageCard(
                      image: 'pexels-vo-thuy-tien-2536967.jpg',
                      bigText: 'Rio De Janiero',
                      smallText: 'Brazil, South America',
                    ),
                    FirstPageCard(
                      image: 'pexels-william-choquette-2641886.jpg',
                      bigText: 'Rio De Janiero',
                      smallText: 'Brazil, South America',
                    ),
                    FirstPageCard(
                      image: 'pexels-ylanite-koppens-1906435.jpg',
                      bigText: 'Rio De Janiero',
                      smallText: 'Brazil, South America',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Decoration',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Container(child: Icon(Icons.message)),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FirstPageListile(
                          image: 'pexels-dariuskrs-2609106.jpg',
                          bigText: 'Salvador',
                          smallText: 'Brazil',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [

      // ]),
    );
  }
}
