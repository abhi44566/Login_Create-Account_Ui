import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_design/sign_in.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
        backgroundColor: Colors.white24,
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
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Icon(
              Icons.mail_outline,
              color: Colors.blue,
              size: 40,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Check Your Email',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                '     We sent a code to\n yourname@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildOtpInputField(context),
                SizedBox(width: 12), // Add space between fields
                _buildOtpInputField(context),
                SizedBox(width: 12),
                _buildOtpInputField(context),
                SizedBox(width: 12),
                _buildOtpInputField(context),
              ],
            ),

            SizedBox(height: 40),

            // Add the submit button here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity, // Full width
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 230,
            ),


            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignIn()));
                },
                child: Text(
                  'Thank u!',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),


            SizedBox(height: 20), // Space below the button
          ],
        ),
      ),
    );
  }

  Widget _buildOtpInputField(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context).textTheme.headlineMedium,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.black), // Black border
          ),
        ),
      ),
    );
  }
}
