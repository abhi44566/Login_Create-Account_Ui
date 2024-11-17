import 'package:flutter/material.dart';

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Forget Password",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Icon(
              Icons.create_outlined,
              color: Colors.blue,
              size: 40,
            ),


            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'You Create Your Account Here',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                '     Submit Your data\nthen Create Your account ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.nest_cam_wired_stand_outlined),
                  labelText: 'Enter Your Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.accessibility_rounded),
                  labelText: 'Enter Your Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),


            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range),
                  labelText: 'Enter Your Date of Birth',
                  border: OutlineInputBorder(),
                ),
              ),
            ),


            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: 'Enter Your Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.paste_sharp),
                  labelText: 'Enter Your Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
              SizedBox(
               height: 20,
               ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
