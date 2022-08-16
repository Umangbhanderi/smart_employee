import 'package:flutter/material.dart';
import 'package:smart_employees/create.dart';
import 'package:smart_employees/forgot.dart';
import 'package:smart_employees/homeScreen/home_screen.dart';
// import 'package:smart_employees/homescreen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E2D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xff1E1E2D)),
        // iconTheme:const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const  Text(
                "Welcome",
                style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              color: Color(0xffFABF3F),
                            ),
                            height: 58,
                            width: MediaQuery.of(context).size.width,
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                              const  Padding(
                                  padding:
                                     EdgeInsets.only(top: 20.0, bottom: 10),
                                  child: Text(
                                    "Email Id",
                                    style: TextStyle(fontSize: 14,color: Colors.black),
                                  ),
                                ),
                                TextFormField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    hintText: "Enter Your Email",hintStyle: TextStyle(color: Colors.black,fontSize: 14),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                              const  Padding(
                                  padding:
                                       EdgeInsets.only(top: 20.0, bottom: 10),
                                  child: Text(
                                    "Password",
                                    style: TextStyle(fontSize: 14,color: Colors.black),
                                  ),
                                ),
                                TextFormField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    hintText: "Password",hintStyle: TextStyle(color: Colors.black,fontSize: 14),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Forgot()));
                                        },
                                        child:const Text(
                                          "Forgot Password?",
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.black),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen()));
                                    },
                                    child:
                                      const  Text("LOGIN", style: TextStyle(fontSize: 16,color: Colors.black)),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(const
                                            Color(0xffFABF3F)),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)))),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>const Create()));
                                    },
                                    child: const Text(
                                      "Create Account",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ))
                              ],
                            ),
                          )
                        ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
