import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterapp/Const.dart';

import 'Responsive.dart';

// ignore: camel_case_types
class waytodothoughttwo extends StatefulWidget {
  @override
  _waytodothoughttwoState createState() => _waytodothoughttwoState();
}

// ignore: camel_case_types
class _waytodothoughttwoState extends State<waytodothoughttwo> {
  String url =
      "https://storage.googleapis.com/gd-wagtail-prod-assets/original_images/MDA2018_inline_03.jpg";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    print(SizeConfig.blockSizeVertical);
    print(SizeConfig.blockSizeHorizontal);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Profile',
            style: kPagetitleStyle,
          ),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
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
                                        style: TextStyle(
                                          color: Color(0xff616161),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ButtonTheme(
                              minWidth: SizeConfig.blockSizeHorizontal * 50,
                              height: 25.0,
                              child: RaisedButton(
                                child: FittedBox(
                                    child: Text("HEALTH & LIFESTYLE")),
                                onPressed: () {},
                                color: Color(0xff5567C9).withOpacity(.7),
                                textColor: Colors.white,
                                splashColor: Colors.grey,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.baseline,
                                      textBaseline: TextBaseline.alphabetic,
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
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'FOLLOWER',
                                      style: ksubtextstyle,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '10% MOM',
                                              style: TextStyle(
                                                  color: Color(0xff616161)
                                                      .withOpacity(.8),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              'Growth',
                                              style: TextStyle(
                                                  color: Color(0xff616161)
                                                      .withOpacity(.8),
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
                                          height: 31,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          SizeConfig.blockSizeHorizontal * 15,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: kcontainermargin,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
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
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: ImageContainer(
                                imgUrl: url,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            SizedBox(
                              height: SizeConfig.blockSizeVertical * 8,
                            ),
                            Column(
                              children: [
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
                                          CrossAxisAlignment.start,
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
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                RectangularBar(
                                  height: 80,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: SizedBox(
                                    width: SizeConfig.blockSizeHorizontal * 40,
                                    child: Text(
                                      '"Started my health & fitness journey with yoga and now training 1000+s".',
                                      style: kitalictextstyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ImageContainer(
                              imgUrl: url,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            ImageContainer(
                              imgUrl: url,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            SizedBox(
                              height: SizeConfig.blockSizeVertical * 8,
                            ),
                            Row(
                              children: [
                                RectangularBar(
                                  height: 44,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        )
                      ],
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
                          ButtonTheme(
                            minWidth: 253,
                            height: 32.0,
                            child: RaisedButton(
                              child: Text("LETS COLLAB!"),
                              onPressed: () {},
                              color: Color(0xff3F51B5),
                              textColor: Color(0xffFFFFFF),
                              splashColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Column(
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
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      color: Color(0xff616161).withOpacity(.8),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        }));
  }
}
