import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskapp/pages/Signup_page.dart';
import 'package:taskapp/pages/homepage.dart';
import 'package:taskapp/utils/inputfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        obscureText: true,
                        controller: _emailController,
                        decoration: InputDecoration(
                            hintText: 'Enter your email',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade300)))),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        obscureText: true,
                        controller: _passController,
                        decoration: InputDecoration(
                            hintText: 'Enter your password',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade300)))),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Forgot password?",
                style: TextStyle(color: Colors.blue.shade700, fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () => Get.to(() => HomePage()),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade700,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SignupPage();
                      },
                    )),
                    child: Text(
                      'Signup?',
                      style:
                          TextStyle(color: Colors.blue.shade700, fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 60),
                    child: Divider(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text(
                    'Or',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 60),
                    child: Divider(
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Image.asset(
                          'lib/images/facebook.png',
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      'Login with Facebook',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400, width: 2),
                    //color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Center(
                      child: Image.asset(
                        'lib/images/Goog.png',
                        height: 20,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'Login with Google',
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
