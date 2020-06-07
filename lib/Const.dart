import 'package:flutter/material.dart';

import 'Responsive.dart';

const kPagetitle =
    TextStyle(fontSize: 22.0, color: Color.fromRGBO(97, 97, 97, 0.3));
/////////21//////////
const kmaintextstyle = TextStyle(
  color: Color(0xff616161),
  fontSize: 56,
  fontWeight: FontWeight.w500,
);
//FOLLOWER///
final ksubtextstyle = TextStyle(
    color: Color(0xff616161).withOpacity(.6),
    fontSize: 18,
    fontWeight: FontWeight.w500);
//comments,likes///
final kinfotextstyle = TextStyle(
    color: Color(0xff616161).withOpacity(.8),
    fontSize: 16,
    fontWeight: FontWeight.w500);
//italic style for status
const kitalictextstyle = TextStyle(
  color: Color(0xff616161),
  fontSize: 16,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.italic,
);

const kcontainermargin = EdgeInsets.fromLTRB(20, 20, 10, 20);
final double kImageheightmultiplier = SizeConfig.blockSizeVertical;
final double kImagewidthmultiplier = SizeConfig.blockSizeHorizontal;
final double ktextmultiplier = SizeConfig.blockSizeVertical;

class GestureButtons extends StatelessWidget {
  GestureButtons({@required this.text, this.width, @required this.onPressed});
  final double width;
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 5 * SizeConfig.blockSizeVertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xff616161),
              fontSize: 2.1 * ktextmultiplier,
            ),
          ),
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color(0xffECEFF1)),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  ImageContainer({@required this.imgUrl});
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical * 25,
      width: SizeConfig.blockSizeHorizontal * 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Color(0xff000000).withOpacity(.6),
            spreadRadius: 1,
            // changes position of shadow
          ),
        ],
        image:
            DecorationImage(image: new NetworkImage(imgUrl), fit: BoxFit.fill),
      ),
    );
  }
}

class RectangularBar extends StatelessWidget {
  final double height;
  RectangularBar({@required this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        color: Color(0xff64DD17),
      ),
    );
  }
}
