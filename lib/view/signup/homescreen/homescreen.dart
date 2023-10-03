import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/bottomnavigation/home.dart';
import 'package:flutter_spotify_clone/bottomnavigation/library.dart';
import 'package:flutter_spotify_clone/bottomnavigation/search.dart';
import 'package:flutter_spotify_clone/model/color_constant/color_constant.dart';
// import 'package:spotify_clone/model/color_constant/colors.dart';
// import 'package:spotify_clone/view/bottomnavigation/home/home.dart';
// import 'package:spotify_clone/view/bottomnavigation/library.dart';
// import 'package:spotify_clone/view/bottomnavigation/search.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int selection = 0;

  void tap(index) {
    setState(() {
      selection = index;
    });
  }

  final screens = [Home(), Search(), Library()];

  Widget miniPlayer() {
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Colors.grey.withOpacity(0.1),
      width: deviceSize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset("assets/images/grid1.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Bad Guy",
                  style: TextStyle(color: textcolor),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: textcolor,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: textcolor,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Good morning"),
        backgroundColor: const Color.fromARGB(255, 8, 8, 8),
        // leading: Icon(Icons.settings),
        actions: [
          Icon(Icons.notification_add_rounded),
          SizedBox(width: 18),
          Icon(Icons.timer),
          SizedBox(width: 18),
          Icon(Icons.settings)
          // const SizedBox(width: 18),
        ],
        elevation: 3.0,
      ),
      backgroundColor: backgroundcolor,
      body: screens[selection],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(),
          BottomNavigationBar(
            currentIndex: selection,
            fixedColor: textcolor,
            selectedLabelStyle: TextStyle(color: textcolor),
            backgroundColor: backgroundcolor,
            unselectedItemColor: textcolor,
            type: BottomNavigationBarType.fixed,
            onTap: (value) => tap(value),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: textcolor,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "assets/icons/Search.png",
                  ),
                  color: textcolor,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      "assets/icons/Library.png",
                    ),
                    color: textcolor,
                  ),
                  label: "Library")
            ],
          ),
        ],
      ),
    );
  }
}
