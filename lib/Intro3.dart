
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Intro4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
              Center(
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.fromLTRB(0,90, 0, 50),
                child: Image.asset(
                          'assets/imges/Frame 161.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              color: Colors.black,
              padding:  EdgeInsets.all(10),
              child: Column(
                children: const [
                  Text(
                    'Orgonaize your tasks',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'You can organize your daily tasks by adding\n your tasksinto separate categories',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                 
                    child: Text('Back', style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen4()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Colors.deepPurpleAccent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}