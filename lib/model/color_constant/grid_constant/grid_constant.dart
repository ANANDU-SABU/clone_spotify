import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/list/list.dart';
import 'package:flutter_spotify_clone/model/color_constant/color_constant.dart';


// ignore: must_be_immutable
class Grid extends StatelessWidget {
  final String heading;
  final List<dynamic> gridImage;
  final List<dynamic> gridimageName;
  Grid(
      {super.key,
      required this.heading,
      required this.gridImage,
      required this.gridimageName});

  int gridindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            heading,
            style: TextStyle(
                color: textcolor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 220,
          color: backgroundcolor,
          child: ListView.builder(
              itemCount: gridImage.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            gridScreens[index]));
                              },
                              child: Container(
                                height: 140,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(gridImage[index]),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 150,
                              child: Text(
                                gridimageName[index],
                                style: TextStyle(color: textcolor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 1,
                        ),
                      ],
                    ),
                  )),
        )
      ],
    );
  }
}
