// import 'package:spotify_clone/view/albumscreen/albumscreen.dart';

import 'package:flutter_spotify_clone/view/albumscreen.dart';

List gridScreen = [
  "assets/images/Album cover.png",
  "assets/images/Album cover (1).png",
  "assets/images/Album cover (2).png",
  "assets/images/Album cover (3).png",
];

List gridName = [
  "Liked Songs",
  "Daily Drive",
  "Discover Weekly",
  "Happier than ever"
];

List listName = ["Music", "Podcast & Shows"];

List bigGrid = [
  "assets/images/grid1.png",
  "assets/images/grid2.png",
  "assets/images/grid3.png",
  "assets/images/grid4.png",
];
List biggridName = [
  "Billie Eilish,C418,Tame impala and more",
  "Ed Sheeran, Big Sean, Juice WRLD, Post Malone",
  "Mitski, Tame Impala, Glass Animals, Charli XCX",
  "jxdn, Machine Gun Kelly, YUNGBLUD, All Time Low"
];

List recommendImage = [
  "assets/images/re1.png",
  "assets/images/rec2.png",
  "assets/images/grid4.png",
  "assets/images/grid1.png"
];
List recommendName = [
  "jxdn, Machine Gun Kelly, YUNGBLUD, All Time Low",
  "Mitski, Tame Impala, Glass Animals, Charli XCX",
  "Ed Sheeran, Big Sean, Juice WRLD, Post Malone",
  "Billie Eilish,C418,Tame impala and more",
];

List newlyLoadedimg = [
  "assets/images/grid4.png",
  "assets/images/grid3.png",
  "assets/images/grid2.png",
  "assets/images/grid1.png",
];
List newlyLoadedNames = [
  "Ed Sheeran, Big Sean, Juice WRLD, Post Malone",
  "Mitski, Tame Impala, Glass Animals, Charli XCX",
  "jxdn, Machine Gun Kelly, YUNGBLUD, All Time Low",
  "Billie Eilish,C418,Tame impala and more",
];

final List<dynamic> gridScreens = [
  Albumscreen(
    songName: '1(Mastered)',
    artistName: 'The Beatles',
    imageLink: 'assets/images/grid1.png',
    songNameList: masteredSonglist,
    artistNameList: masteredartistlist,
  ),
  Albumscreen(
    songName: 'Shape Of you',
    artistName: 'Ed Sheeran',
    imageLink: 'assets/images/grid2.png',
    songNameList: edSonglist,
    artistNameList: edartistlist,
  ),
  Albumscreen(
    songName: 'Glass Animals',
    artistName: 'Mitski',
    imageLink: 'assets/images/grid3.png',
    songNameList: miSonglist,
    artistNameList: miartistlist,
  ),
  Albumscreen(
    songName: 'All Time Low',
    artistName: 'Jxdn',
    imageLink: 'assets/images/grid4.png',
    songNameList: jxdnSonglist,
    artistNameList: jxdnartistlist,
  ),
];

List<String> images = [
  "assets/images/Rectangle 14.png",
  "assets/images/Rectangle 15.png",
  "assets/images/Rectangle 16.png",
  "assets/images/Rectangle 14.png",
  "assets/images/Rectangle 15.png",
];

List<dynamic> libraryImage = [
  "assets/images/Album cover.png",
  "assets/images/library 1.png",
  "assets/images/lib2.png",
  "assets/images/lib4.png",
  "assets/images/lib3.png",
  "assets/images/lib5.png"
];

List<dynamic> libraryTitle = [
  "Liked Songs",
  "Your Episodes",
  "Lolo",
  "Marvin Gaye",
  "Front left",
  "Lana Del Rey"
];
List<dynamic> librarySubtitle = [
  "Playlist",
  "Podcast",
  "Artist",
  "Artist",
  "Podcast",
  "Artist"
];

List<dynamic> libraryContainer = ["Music", "Podcast", "Shows"];

List<dynamic> masteredSonglist = [
  "What was I Made For You",
  "Ocean Cultutre",
  "Bad guy"
];
List<dynamic> masteredartistlist = ["Barbie", "Common Cultre", "The Beatles"];

List<dynamic> edSonglist = ["Perfect", "Shape of you", "Photograph"];
List<dynamic> edartistlist = ["Divide", "Divide", "X"];

List<dynamic> miSonglist = ["Washing Machine Heart", "Nobody", "Photograph"];
List<dynamic> miartistlist = ["Be the boy", "Puberty 2022", "=."];

List<dynamic> jxdnSonglist = ["Angels & Demons", "So What", "Comatose"];
List<dynamic> jxdnartistlist = [
  "Tell me about Tomorrow",
  "Tell me about Tomorrow",
  "Comatose"
];
