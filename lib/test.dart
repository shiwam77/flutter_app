import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Const.dart';
import 'Responsive.dart';

///Second row's children differ from other row in width & height  so here the detail of first row's children///
///first container detail//
double consHeight = SizeConfig.blockSizeVertical * 30;
double firstContHeight = consHeight;
double firstContWidth = SizeConfig.blockSizeHorizontal * 35;
double secondContHeight = consHeight;
double secondContWidth = SizeConfig.screenWidth * .5;

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  static String url =
      "https://storage.googleapis.com/gd-wagtail-prod-assets/original_images/MDA2018_inline_03.jpg";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: tittlepadding,
              child: Text(
                'My Profile',
                style: kPagetitleStyle,
              ),
            ),
            Padding(
              padding: paddingToRow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: firstContHeight,
                    width: firstContWidth,
                    child: Stack(
                      children: [
                        Container(
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
                            image: DecorationImage(
                                image: new NetworkImage(url),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          child: Container(
                            height: 25,
                            alignment: Alignment.center,
                            width: imgHolderContainerWidth,
                            color: Color(0xffFFFFFF).withOpacity(.9),
                            child: Text(
                              'CREATOR',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff616161),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: secondContHeight,
                    width: secondContWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Clair - Fit 30 Days",
                              style: TextStyle(
                                  color: Color(0xff616161), fontSize: 18.0),
                            ),
                            Text(
                              '@humming_together',
                              style: TextStyle(
                                  color: Color(0xff424242).withOpacity(.5),
                                  fontSize: 14.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 25,
                              alignment: Alignment.center,
                              child: Text(
                                'HEALTH & LIFESTYLE',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff5567C9).withOpacity(.7),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            matrixwidget(
                                firstRowfirstCol: '21',
                                firstRowSecndCol: 'k',
                                secndRow: 'FOLLOWER'),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                rSideBarMatrixWidget(
                                    rectangularbarHeight: 31,
                                    firstrow: '10% MOM',
                                    secondrow: 'Growth'),
                                SizedBox(
                                  height: 80,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Generaterow(
              firstContainer: infoHolderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FittedBox(
                          child: Text(
                            '3212',
                            style: kmaintextstyle,
                          ),
                        ),
                        Text(
                          'POSTS',
                          style: ksubtextstyle,
                        ),
                      ],
                    ),
                    rSideBarMatrixWidget(
                        rectangularbarHeight: 31,
                        firstrow: '4 posts',
                        secondrow: 'per week'),
                  ],
                ),
              ),
              secondContainer: imageHolderContainer(
                child: Container(
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
                  ),
                  height: SizeConfig.blockSizeVertical * 25,
                  width: double.infinity,
                  child: Stack(
                      // children: [
                      //  CarouselSlider(
                      //   items: imgstack.map((e) => Builder(BuildContex  context){
                      //    return Container();
                      //  }),
                      //),
                      // ],
                      ),
                ),
              ),
            ),
            Generaterow(
              firstContainer: imageHolderContainer(
                child: ImageContainer(
                  imgUrl: url,
                ),
              ),
              secondContainer: infoHolderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    matrixwidget(
                        firstRowfirstCol: '221%', secndRow: 'ENGAGEMENT'),
                    lSideBarMatrixWidget(
                        rectangularbarHeight: 60,
                        firstrow: '42K Likes',
                        secondrow: '42K Comments',
                        thirdrow: 'this month'),
                  ],
                ),
              ),
            ),
            Generaterow(
              firstContainer: infoHolderContainer(
                child: Row(
                  children: [
                    RectangularBar(
                      height: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        '"Started my health & fitness journey with yoga and now training 1000+s".',
                        style: kitalictextstyle,
                      ),
                    ),
                  ],
                ),
              ),
              secondContainer: imageHolderContainer(
                child: ImageContainer(
                  imgUrl: url,
                ),
              ),
            ),
            Generaterow(
              firstContainer: imageHolderContainer(
                child: ImageContainer(
                  imgUrl: url,
                ),
              ),
              secondContainer: infoHolderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    matrixwidget(
                        firstRowfirstCol: '211%', secndRow: 'FOLLOWER'),
                    lSideBarMatrixWidget(
                        rectangularbarHeight: 44,
                        firstrow: '42K Impression',
                        secondrow: 'this month'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: paddingToRow,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, bottom: 5),
                    child: Text(
                      'Collaborate with me!',
                      style: TextStyle(
                        color: Color(0xff616161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xff3F51B5),
                    height: 4.0,
                    width: double.infinity,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Text(
                      'I am open to business opportunities from the members of the lounge',
                      style: TextStyle(
                        color: Color(0xff616161),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: lastTwoRowpadding,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureButtons(
                        text: 'colabs',
                        onPressed: () {},
                      ),
                      GestureButtons(
                        text: 'shout outs',
                        onPressed: () {},
                      ),
                      GestureButtons(
                        text: 'campaigns',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureButtons(
                        text: 'gigs',
                        onPressed: () {},
                      ),
                      GestureButtons(
                        text: 'product reviews ',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: paddingToRow,
                    child: ButtonTheme(
                      minWidth: double.infinity,
                      height: 32.0,
                      child: RaisedButton(
                        child: Text("LETS COLLAB!"),
                        onPressed: () {},
                        color: Color(0xff3F51B5),
                        textColor: Color(0xffFFFFFF),
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: lastTwoRowpadding,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: SizeConfig.blockSizeVertical * 15,
                    width: SizeConfig.blockSizeHorizontal * 40,
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
                      image: DecorationImage(
                          image: new NetworkImage(url), fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    height: SizeConfig.blockSizeVertical * 15,
                    width: SizeConfig.screenWidth * .4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Find me on',
                          style: TextStyle(
                            color: Color(0xff616161).withOpacity(.8),
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 22,
                              width: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: new NetworkImage(url),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 22,
                              width: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: new NetworkImage(url),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            RectangularBar(
                              height: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FittedBox(
                              child: Text(
                                'claire30dayHealth.com',
                                style: TextStyle(
                                    color: Color(0xff616161).withOpacity(.8),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
