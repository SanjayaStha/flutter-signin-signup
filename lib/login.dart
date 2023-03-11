import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
                left: 55,
                right: 35),
            child: Container(
                width: 300,
                height: 200,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/logob.png')))),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: 35,
                  right: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Email",
                        hintStyle: const TextStyle(fontSize: 22),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Password",
                        hintStyle: const TextStyle(fontSize: 22),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Color.fromARGB(255, 7, 7, 7),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromARGB(31, 107, 105, 105),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                      onPressed: () {}, 
                      // ignore: prefer_const_constructors
                      child: Text(
                      "Sign Up", 
                      // ignore: prefer_const_constructors
                      style: TextStyle( 
                        decoration: TextDecoration.underline,
                        fontSize: 22),)),
                         TextButton(
                      onPressed: () {}, 
                      // ignore: prefer_const_constructors
                      child: Text(
                      "Forgot Password?", 
                      // ignore: prefer_const_constructors
                      style: TextStyle( 
                        decoration: TextDecoration.underline,
                        fontSize: 22),))
                        ],
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
