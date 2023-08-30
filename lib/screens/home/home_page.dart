import 'package:flutter/material.dart';
import 'package:online_course/widgets/category_button.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/c2.jpeg',
                          width: 50.0,
                        ),

                        SizedBox(width: 25.0),
                        Text(
                          'Premium',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'AmaticSC',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            'The Secrets to be Fluent in English',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [

                        Expanded(
                          child: CategoryButton(
                            text: 'Full Access to Pattern Lessons',

                            color: Colors.white,
                            isSelected: value1, imagePath: 'assets/images/e2.jpeg',

                          ),
                        ),
                        SizedBox(width: 16.0),


                        Expanded(
                          child: CategoryButton(
                            text: 'Unlock All Limitations',
                            color: Colors.white,
                            isSelected: true, imagePath: 'assets/images/book.jpeg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [

                        Expanded(
                          child: CategoryButton(
                            text: 'All Topics Available',

                            color: Colors.white,
                            isSelected: true, imagePath: 'assets/images/note.jpeg',
                          ),
                        ),
                        SizedBox(width: 16.0),

                        Expanded(
                          child: CategoryButton(
                            text: 'Presonlized Coahing',

                            color: Colors.white,
                            isSelected: true, imagePath: 'assets/images/tel.jpeg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            '2021 Special Early Birds Offer',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.orange,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'IDR50.000 / month',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),
                          ),

                          SizedBox(height: 30.0),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                value1 = !value1;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              backgroundColor: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Star 3 Days Free Trail',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'View all Plan',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

