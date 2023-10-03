import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/bottomnavigation/firstrow.dart';
import 'package:flutter_spotify_clone/list/list.dart';
import 'package:flutter_spotify_clone/model/color_constant/color_constant.dart';
import 'package:flutter_spotify_clone/model/color_constant/grid_constant/grid_constant.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navigationDrawer(),
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Firstrow(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: gridScreen.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 70),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: gridcolor,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(gridScreen[index]),
                                    fit: BoxFit.fill)),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(gridName[index],
                                  style: TextStyle(
                                      color: textcolor,
                                      fontWeight: FontWeight.w500)),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Grid(
                heading: 'Jump To Back',
                gridImage: bigGrid,
                gridimageName: biggridName,
              ),
              Grid(
                heading: 'Recommended for Today',
                gridImage: recommendImage,
                gridimageName: recommendName,
              ),
              Grid(
                heading: 'Newly Loaded',
                gridImage: newlyLoadedimg,
                gridimageName: newlyLoadedNames,
              ),
            ],
          ),
        ),
      ),
    );
  }

  navigationDrawer() {}
}
