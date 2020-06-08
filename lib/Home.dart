import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'Const.dart';
import 'Responsive.dart';

//Done by using Expanded Widget
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url =
      "https://storage.googleapis.com/gd-wagtail-prod-assets/original_images/MDA2018_inline_03.jpg";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Profile',
            style: kPagetitleStyle,
          ),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                  minHeight: constraints.maxWidth),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            margin: kcontainermargin,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              padding: new EdgeInsets.only(bottom: 15.0),
                              child: Stack(
                                children: [
                                  ImageContainer(
                                    imgUrl: url,
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    child: Container(
                                      height: 25,
                                      alignment: Alignment.center,
                                      width:
                                          SizeConfig.blockSizeHorizontal * 35,
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
                          ),
                          Expanded(
                            child: Container(
                              margin: kcontainermargin,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Clair - Fit 30 Days",
                                          style: TextStyle(
                                              color: Color(0xff616161),
                                              fontSize: 18.0),
                                        ),
                                        Text(
                                          '@humming_together',
                                          style: TextStyle(
                                              color: Color(0xff424242)
                                                  .withOpacity(.5),
                                              fontSize: 14.0),
                                        ),
                                        ButtonTheme(
                                          minWidth: double.infinity,
                                          height: 25.0,
                                          child: RaisedButton(
                                            child: FittedBox(
                                                child:
                                                    Text("HEALTH & LIFESTYLE")),
                                            onPressed: () {},
                                            color: Color(0xff5567C9)
                                                .withOpacity(.7),
                                            textColor: Colors.white,
                                            splashColor: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.baseline,
                                              textBaseline:
                                                  TextBaseline.alphabetic,
                                              children: [
                                                Text(
                                                  '21',
                                                  style: kmaintextstyle,
                                                ),
                                                Text(
                                                  'k',
                                                  style: TextStyle(
                                                      color: Color(0xff616161),
                                                      fontSize: 28,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            FittedBox(
                                              child: Text(
                                                'FOLLOWER',
                                                style: ksubtextstyle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '10% MOM',
                                                    style: TextStyle(
                                                        color: Color(0xff616161)
                                                            .withOpacity(.8),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'Growth',
                                                    style: TextStyle(
                                                        color: Color(0xff616161)
                                                            .withOpacity(.8),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              RectangularBar(
                                                height: 31,
                                              ),
                                            ],
                                          ),
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
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            margin: kcontainermargin,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '3212',
                                      style: kmaintextstyle,
                                    ),
                                    Text(
                                      'POSTS',
                                      style: ksubtextstyle,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '4 posts',
                                          style: kinfotextstyle,
                                        ),
                                        Text(
                                          'per week',
                                          style: kinfotextstyle,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RectangularBar(
                                      height: 31,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: kcontainermargin,
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
                                child: Carousel(
                                  autoplay: true,
                                  animationCurve: Curves.fastOutSlowIn,
                                  animationDuration:
                                      Duration(milliseconds: 1000),
                                  images: [
                                    NetworkImage(url),
                                    NetworkImage(url),
                                    NetworkImage(url),
                                    NetworkImage(url),
                                  ],
                                  dotSize: 0,
                                  indicatorBgPadding: 5.0,
                                  dotBgColor: Colors.transparent,
                                  borderRadius: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            margin: kcontainermargin,
                            child: ImageContainer(imgUrl: url),
                          ),
                          Container(
                            margin: kcontainermargin,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '21%',
                                      style: kmaintextstyle,
                                    ),
                                    Text(
                                      'ENGAGEMENT',
                                      style: ksubtextstyle,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    RectangularBar(
                                      height: 60,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.baseline,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        Text(
                                          '42K Likes',
                                          style: kinfotextstyle,
                                        ),
                                        Text(
                                          '42K Comments',
                                          style: kinfotextstyle,
                                        ),
                                        Text(
                                          'this month',
                                          style: kinfotextstyle,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              margin: kcontainermargin,
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
                          ),
                          Container(
                            margin: kcontainermargin,
                            child: ImageContainer(imgUrl: url),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            margin: kcontainermargin,
                            child: ImageContainer(imgUrl: url),
                          ),
                          Container(
                            margin: kcontainermargin,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '221%',
                                      style: kmaintextstyle,
                                    ),
                                    Text(
                                      'REACH',
                                      style: ksubtextstyle,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    RectangularBar(
                                      height: 44,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.baseline,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        Text(
                                          '42K Impression',
                                          style: kinfotextstyle,
                                        ),
                                        Text(
                                          'this month',
                                          style: kinfotextstyle,
                                        ),
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
                    Container(
                      margin: kcontainermargin,
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
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: ButtonTheme(
                              minWidth: double.infinity,
                              height: 32.0,
                              child: RaisedButton(
                                child: Text("LETS COLLAB!"),
                                onPressed: () {},
                                color: Color(0xff3F51B5),
                                textColor: Color(0xffFFFFFF),
                                splashColor: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: kcontainermargin,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: SizeConfig.blockSizeVertical * 13,
                            width: SizeConfig.blockSizeHorizontal * 47,
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
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: new NetworkImage(url),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      RectangularBar(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'claire30dayHealth.com',
                                        style: TextStyle(
                                            color: Color(0xff616161)
                                                .withOpacity(.8),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
