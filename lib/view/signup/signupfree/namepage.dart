import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/model/color_constant/color_constant.dart';
import 'package:flutter_spotify_clone/view/signup/homescreen/homescreen.dart';
// import 'package:spotify_clone/model/color_constant/colors.dart';
// import 'package:spotify_clone/view/homescreen/homescreen.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        centerTitle: true,
        title: const Text("Create Account"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "What's Your Name?",
                    style: TextStyle(
                        color: textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .06,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: textfieldcolor),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Row(
                children: [
                  Text("This appears on your Spotify profile.",
                      style: TextStyle(color: textcolor))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .06,
                width: MediaQuery.of(context).size.width * .2,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: textfieldcolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Bottomnavigation(),
                      ));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: backgroundcolor, fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
