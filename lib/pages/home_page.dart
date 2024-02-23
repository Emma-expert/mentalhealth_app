import 'package:flutter/material.dart';
import 'package:mentalhealth/utilities/emoticon_face.dart';
import 'package:mentalhealth/utilities/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 82, 146),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: '',
        ),
       
        BottomNavigationBarItem(
          icon: Icon(
            Icons.fitness_center,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: '',
        ),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Column(
                children: [
                  //Greeting Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Jared!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            '23 Jan 2023',
                            style: TextStyle(
                              color: Color.fromARGB(255, 44, 146, 230),
                            ),
                          ),
                        ],
                      ),

                      //Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 25, 144, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 22,
                  ),

                  // search bar Row
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 26, 142, 236),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 22,
                  ),

                  //How do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 22,
                  ),

                  //4 different faces

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //badly
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😫',
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),

                      //fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🙂',
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),

                      //well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😄',
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),

                      //excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😊',
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                  color: Color.fromARGB(255, 229, 228, 228),
                ),
                child: Center(
                  child: Column(
                    children: [
                      // exercises heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Icon(
                            Icons.more_horiz,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      // listview of exercises
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking',
                              numberOfExercises: 16,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: 'Skipping',
                              numberOfExercises: 4,
                              color: Colors.blue
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: 'Reading',
                              numberOfExercises: 20,
                              color: Colors.pink,
                            ),
                            ExerciseTile(
                              icon: Icons.access_alarms_outlined,
                              exerciseName: 'Culinary',
                              numberOfExercises: 17,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
