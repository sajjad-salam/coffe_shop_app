
import 'dart:ui';

class Luck{
  final String image;
  final Color color;
  final String task;

  Luck(this.image, this.color, this.task);


  String get asset =>  "asset/image/$image.png";
}