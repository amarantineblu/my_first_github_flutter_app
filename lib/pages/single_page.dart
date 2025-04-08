// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, avoid_print, unused_element, sized_box_for_whitespace

import 'package:flutter/material.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  height: MediaQuery.of(context).size.height * .4,
                  child: Image.asset(
                    'images/pexels-william-choquette-2641886.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  left: 2,
                  top: 2,
                  child: GestureDetector(
                    onTap: () {
                      // Navigatior.pop();
                      Navigator.pop(context, '/first_page');
                    },

                    child: Icon(Icons.arrow_left_rounded, size: 50),
                  ),
                ),
                Positioned(
                  right: 3,
                  child: Column(
                    children: [
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.0),
                          ),
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'images/pexels-william-choquette-2641886.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.0),
                          ),
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'images/pexels-ylanite-koppens-1906435.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.0),
                          ),
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'images/pexels-trang-doan-1132047.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.0),
                          ),
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'images/pexels-trang-doan-1092730.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // alignment: Alignment.bottomCenter,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: const Color.fromARGB(255, 180, 177, 177),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Distance',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '7km',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 35,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: const Color.fromARGB(255, 180, 177, 177),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Temp',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '28ºC',
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: const Color.fromARGB(255, 180, 177, 177),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Rating',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Card(child: Column(children: [Text('Temp'), Text('28ºC')])),
                    // Card(child: Column(children: [Text('Rating'), Text('4.8')])),
                  ],
                ),
                SizedBox(height: 35),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' This is the shortest of the three routines but certainly not any less intresting. The north witches way leads you in 100km from aberkldfljolof, to the beautiful island of anlessy',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Price',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '1270',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        // backgroundColor: ,
                      ),
                      child: Icon(Icons.arrow_right_alt_rounded),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
