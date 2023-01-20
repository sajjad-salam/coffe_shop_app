// ignore: camel_case_types
class player {
  final int level;
  final String name, img;

  player({required this.level, required this.name, required this.img});
}

// list of players
List<player> players = [
  player(
    level: 103,
    name: "رسول ماجد",
    img: "asset/image/pngaaa.com-1527774.png",
  ),
  player(
    level: 102,
    name: " مصطفى كريم",
    img: "asset/image/pngaaa.com-1527778.png",
  ),
  player(
    level: 100,
    name: "سجاد سلام",
    img: "asset/image/three.png",
  ),
  player(
    level: 41,
    name: "حسين محسن",
    img: "asset/image/one.png",
  ),
  player(
    level: 15,
    name: "محمد حسين",
    img: "asset/image/viking.png",
  ),
  player(
    level: 20,
    name: "رسول ناطق",
    img: "asset/image/two.png",
  ),
];
