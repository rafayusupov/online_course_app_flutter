// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable, non_constant_identifier_names, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';
import '../HomePage.dart';

class HomePageWebArguments {
  final BoxInfo boxInfo;

  HomePageWebArguments({required this.boxInfo});
}

class HomePageWeb extends StatefulWidget {
  HomePageWeb({Key? key}) : super(key: key);

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  HomePageWebArguments data = Get.arguments;
  dynamic box;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final boxInfo = data.boxInfo;
    box = data.boxInfo;
    SfRangeValues _values = SfRangeValues(
      0.0,
      600.0,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets /image/121-1216772_cheating-on-love2d-works-or-so-it-seems-non-communicable-diseases-icon.png',
                height: 30,
                width: 30,
              ),
            )
          ],
          title: Text(
            boxInfo.title,
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 40,
              color: Colors.black,
            ),
            onPressed: () {
              Get.to(() => HomePage());
            },
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      scale: 3,
                      image: AssetImage(boxInfo.strlimage),
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        topRight: Radius.circular(17)),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 10.0),
                    ]),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17)),
                    color: boxInfo.color),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '6:27/17:87',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.volume_up,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.crop_free,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ChoiceBottom(
              boxs: boxInfo,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                height: 200,
                color: Colors.lightBlue.shade100,
                child: ListView(
                  children: [
                    PlayList(
                      boxs: boxInfo,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.sell),
                      label: Text("\$34.23"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          textStyle: TextStyle(fontSize: 15),
                          primary: Colors.amber),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            bool isSelected = false;
                            bool isSelected2 = false;
                            return Container(
                              height: 600,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.lightBlue.shade50,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, top: 25),
                                    child: Text(
                                      'Price',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SfRangeSlider(
                                      values: _values,
                                      min: 0.0,
                                      max: 800,
                                      showLabels: true,
                                      showTicks: true,
                                      numberFormat: NumberFormat('\$'),
                                      enableTooltip: true,
                                      interval: 200,
                                      onChanged: (SfRangeValues NewValues) {
                                        setState(() {
                                          print(NewValues);
                                          _values = NewValues;
                                        });
                                      }),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 25.0, top: 25),
                                    child: Text(
                                      'Rating',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child: Wrap(
                                      spacing: 15,
                                      children: List.generate(5, (int index) {
                                        return Chip(
                                          label: Text(
                                            '${index + 1}',
                                            style: TextStyle(fontSize: 15.0),
                                          ),
                                          avatar: Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          backgroundColor: Colors.white,
                                        );
                                      }),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 25),
                                    child: Text(
                                      'Categories',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 17.0, right: 17.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ChoiceChip(
                                            avatar: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons
                                                    .local_fire_department_rounded,
                                                color: Colors.lightBlue,
                                              ),
                                            ),
                                            label: SizedBox(
                                              height: 40,
                                              width: double.infinity,
                                              child: Center(
                                                  child: Text('All topic')),
                                            ),
                                            selected: isSelected,
                                            onSelected: (bool value) {
                                              isSelected = !isSelected;
                                            },
                                            selectedColor: Colors.lightBlue,
                                            pressElevation: 20,
                                            backgroundColor: Colors.lightBlue,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: ChoiceChip(
                                            avatar: CircleAvatar(
                                              backgroundColor:
                                                  Colors.purple.shade300,
                                              child: Icon(
                                                Icons.electric_bolt,
                                                color: Colors.white,
                                              ),
                                            ),
                                            label: SizedBox(
                                              height: 40,
                                              width: double.infinity,
                                              child: Center(
                                                  child: Text('Popular')),
                                            ),
                                            selected: isSelected2,
                                            onSelected: (bool value) {
                                              isSelected = !isSelected;
                                            },
                                            pressElevation: 20,
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 7, left: 10, right: 5),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text('Reset', style: TextStyle(color: Colors.black, fontSize: 17),),
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(60, 70),
                                                primary: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 7, right: 10,),
                                            child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Apply', style: TextStyle(color: Colors.white, fontSize: 17),),
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(60, 70),
                                                primary: boxInfo.color,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                              ),
                                      ),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue,
                          fixedSize: Size(250, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          )),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // BottomPaySheet(
                    //   text: 'Buy Now',
                    //   onClicked: () => showModalBottomSheet(
                    //       context: context, builder: (context) => buildSheet()),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChoiceBottom extends StatefulWidget {
  BoxInfo boxs;

  ChoiceBottom({Key? key, required this.boxs}) : super(key: key);

  @override
  State<ChoiceBottom> createState() => _ChoiceBottomState();
}

class _ChoiceBottomState extends State<ChoiceBottom> {
  BoxInfo get boxs => widget.boxs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: boxs.color,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 35),
                      child: Text(
                        'PlayList',
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 20,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.shade50,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('17')),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Center(
                child: Text(
                  'Descriptions',
                  style: TextStyle(color: Colors.grey.shade800),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlayList extends StatefulWidget {
  BoxInfo boxs;

  PlayList({Key? key, required this.boxs}) : super(key: key);

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  BoxInfo get boxs => widget.boxs;
  final List<BoxPlayList> _lists = [
    BoxPlayList(
      'Introduction',
      Icons.play_circle,
      Icons.lock,
      '06:25 / 17:45 ',
    ),
    BoxPlayList(
      'Wev Design Thinking',
      Icons.play_circle,
      Icons.lock,
      '06:25 / 17:45 ',
    ),
    BoxPlayList(
      'Introduction',
      Icons.play_circle,
      Icons.lock,
      '06:25 / 17:45 ',
    ),
    BoxPlayList(
      'Introduction',
      Icons.play_circle,
      Icons.lock,
      '06:25 / 17:45 ',
    ),
    BoxPlayList(
      'Introduction',
      Icons.play_circle,
      Icons.lock,
      '06:25 / 17:45 ',
    ),
    BoxPlayList(
      'Introduction',
      Icons.play_circle,
      Icons.lock,
      '06:25 / 17:45 ',
    ),
    BoxPlayList(
      'Introduction',
      Icons.play_circle,
      Icons.lock,
      '06:25 / 17:45 ',
    ),
    BoxPlayList(
      'Introduction',
      Icons.play_circle,
      Icons.lock,
      '06:25 / 17:45 ',
    ),
    BoxPlayList(
      'Introduction',
      Icons.play_circle,
      Icons.lock,
      '06:25 / 17:45 ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _lists.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return PlayListInfo(
            box1: boxs,
            title: _lists[index].title,
            lIcon: _lists[index].lIcon,
            rIcon: _lists[index].rIcon,
            subTitle: _lists[index].subTitle,
          );
        });
  }
}

class PlayListInfo extends StatelessWidget {
  final BoxInfo box1;
  final IconData lIcon;
  final String title;
  final String subTitle;
  final IconData rIcon;

  PlayListInfo(
      {Key? key,
      required this.box1,
      required this.lIcon,
      required this.title,
      required this.subTitle,
      required this.rIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 15.0),
                  child: Icon(lIcon, size: 45, color: box1.color),
                ),
                // SizedBox(
                //   width: 8,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        subTitle,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: box1.color,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    margin: EdgeInsets.only(right: 20, top: 10),
                    child: Icon(
                      rIcon,
                      color: Colors.white,
                    ))
              ]),
        ],
      ),
    );
  }
}

class BottomPaySheet extends StatefulWidget {
  String text;
  var onClicked;

  BottomPaySheet({Key? key, required this.text, required this.onClicked})
      : super(key: key);

  @override
  State<BottomPaySheet> createState() => _BottomPaySheetState();
}

class _BottomPaySheetState extends State<BottomPaySheet> {
  String get text => text;

  get onCliked => onCliked;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
      onPressed: onCliked,
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class BoxPlayList {
  final IconData lIcon;
  final String title;
  final String subTitle;
  final IconData rIcon;

  BoxPlayList(this.title, this.lIcon, this.rIcon, this.subTitle);
}
