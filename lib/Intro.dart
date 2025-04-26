import 'package:flutter/material.dart';
import 'package:flutter_application_2/CustomButton.dart';
import 'package:flutter_application_2/Intro2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                child: Image.asset(
                  'assets/imges/Group 182.png',
                  width: 250,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              color: Colors.black,
              padding: EdgeInsets.all(10),
              child: Column(
                children: const [
                  Text(
                    'Manage your tasks',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'You can easily manage all of your daily\n tasks in DoMe for free',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.white70),
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
                        MaterialPageRoute(builder: (context) => Screen2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text('NEXT', style: TextStyle(color: Colors.white)),
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
