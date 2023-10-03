import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/model/color_constant/color_constant.dart';
import 'package:flutter_spotify_clone/view/signup/homescreen/homescreen.dart';

class Firstrow extends StatefulWidget {
  const Firstrow({super.key});

  @override
  State<Firstrow> createState() => _FirstrowState();
}

class _FirstrowState extends State<Firstrow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: spotifyGreen,
            child: Text(
              "A",
              style: TextStyle(color: backgroundcolor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Bottomnavigation(),
                ));
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: gridcolor,
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("All",
                      style: TextStyle(
                          color: textcolor, fontWeight: FontWeight.bold)),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: gridcolor,
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Music",
                    style: TextStyle(
                        color: textcolor, fontWeight: FontWeight.bold)),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: gridcolor,
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Podcast",
                    style: TextStyle(
                        color: textcolor, fontWeight: FontWeight.bold)),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
