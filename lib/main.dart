import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff222325), Color(0xff122824)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            actions: [
              Icon(Icons.settings),
              SizedBox(
                width: 40,
              )
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 50),
                      child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/733/733558.png"),
                    ),
                    Container(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("assests/profile.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Text(
                        "__.mahaki.__",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "Lato"),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.blue[
                            900], // Replace with your desired background color
                        borderRadius: BorderRadius.circular(
                            20), // Optional: Add border radius
                      ),
                      child: TextField(
                        controller: _email,
                        style: TextStyle(
                            color: Colors.white), // Set text color to white
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: "Lato"), // Hint text color
                          border: InputBorder.none, // Remove the border
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0), // Optional: Add padding
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.blue[
                            900], // Replace with your desired background color
                        borderRadius: BorderRadius.circular(
                            20), // Optional: Add border radius
                      ),
                      child: TextField(
                        controller: _email,
                        style: TextStyle(
                            color: Colors.white), // Set text color to white
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: "Lato"), // Hint text color
                          border: InputBorder.none, // Remove the border
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0), // Optional: Add padding
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(20)),
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Lato"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Log into another account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Lato"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 100),
                    Container(
                      child: Text(
                        "Create new account",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.all_inclusive, color: Colors.white),
                            Text(
                              "Meta",
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
