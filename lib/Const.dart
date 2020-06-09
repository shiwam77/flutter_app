import 'package:flutter/material.dart';

import 'Responsive.dart';

double height = SizeConfig.blockSizeVertical * 25;
double infoHolderContainerHeight = height;
double imgHolderContainerHeight = height;
double infoHolderContainerWidth = SizeConfig.screenWidth * .45;
double imgHolderContainerWidth = SizeConfig.blockSizeHorizontal * 35;
final paddingToRow = EdgeInsets.symmetric(vertical: 30, horizontal: 20);
final lastTwoRowpadding = EdgeInsets.symmetric(horizontal: 20);
final tittlepadding = EdgeInsets.only(top: 10, left: 30);
const kPagetitleStyle =
    TextStyle(fontSize: 22.0, color: Color.fromRGBO(97, 97, 97, 0.3));

final profileNameTextStyle =
    TextStyle(color: Color(0xff616161), fontSize: 18.0);
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
final double ktextmultiplier = SizeConfig.blockSizeVertical;

class Generaterow extends StatelessWidget {
  Generaterow({@required this.firstContainer, @required this.secondContainer});
  Widget firstContainer;
  Widget secondContainer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingToRow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          firstContainer,
          secondContainer,
        ],
      ),
    );
  }
}

class imageHolderContainer extends StatelessWidget {
  imageHolderContainer({@required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: imgHolderContainerHeight,
      width: imgHolderContainerWidth,
      child: child,
    );
  }
}

class infoHolderContainer extends StatelessWidget {
  infoHolderContainer({@required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: infoHolderContainerHeight,
      width: infoHolderContainerWidth,
      child: child,
    );
  }
}

class ImageContainer extends StatelessWidget {
  ImageContainer({@required this.imgUrl});
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        decoration: kImageBoxDecoration(imageUrl: imgUrl),
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
            horizontal: 20,
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
            borderRadius: BorderRadius.circular(20), color: Color(0xffECEFF1)),
      ),
    );
  }
}

Widget matrixwidget(
    {@required String firstRowfirstCol,
    String firstRowSecndCol,
    @required String secndRow}) {
  Widget secndColWidget() {
    return firstRowSecndCol == null
        ? SizedBox()
        : Text(
            firstRowSecndCol,
            style: TextStyle(
                color: Color(0xff616161),
                fontSize: 28,
                fontWeight: FontWeight.w500),
          );
  }

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          FittedBox(
            child: Text(
              firstRowfirstCol,
              style: kmaintextstyle,
            ),
          ),
          secndColWidget(),
        ],
      ),
      FittedBox(
        child: Text(
          secndRow,
          style: ksubtextstyle,
        ),
      ),
    ],
  );
}

Widget rSideBarMatrixWidget(
    {@required String firstrow,
    @required String secondrow,
    @required double rectangularbarHeight}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            firstrow,
            style: TextStyle(
                color: Color(0xff616161).withOpacity(.8),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          Text(
            secondrow,
            style: TextStyle(
                color: Color(0xff616161).withOpacity(.8),
                fontSize: 16,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.end,
          ),
        ],
      ),
      SizedBox(
        width: 10,
      ),
      RectangularBar(
        height: rectangularbarHeight,
      ),
    ],
  );
}

Widget lSideBarMatrixWidget(
    {@required double rectangularbarHeight,
    @required String firstrow,
    String secondrow,
    String thirdrow}) {
  Widget secondrowwidget() {
    return secondrow == null
        ? SizedBox()
        : Text(
            secondrow,
            style: kinfotextstyle,
          );
  }

  Widget thirdrowwidget() {
    return thirdrow == null
        ? SizedBox()
        : Text(
            thirdrow,
            style: kinfotextstyle,
          );
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      RectangularBar(
        height: rectangularbarHeight,
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            firstrow,
            style: kinfotextstyle,
          ),
          secondrowwidget(),
          thirdrowwidget()
        ],
      ),
    ],
  );
}

Decoration kImageBoxDecoration({@required String imageUrl}) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    boxShadow: [
      BoxShadow(
        blurRadius: 10,
        color: Color(0xff000000).withOpacity(.6),
        spreadRadius: 1,
        // changes position of shadow
      ),
    ],
    image: DecorationImage(image: new NetworkImage(imageUrl), fit: BoxFit.fill),
  );
}

Widget findmeLogoContainer(
    {@required String imgUrl, @required Function onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 22,
      width: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image:
            DecorationImage(image: new NetworkImage(imgUrl), fit: BoxFit.fill),
      ),
    ),
  );
}
