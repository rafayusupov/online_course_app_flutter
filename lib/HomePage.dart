// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hometask_nurlan/AbboutWebDev/HomePageWeb.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.lightBlue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: Colors.lightBlue,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book_outlined,
              color: Colors.lightBlue,
            ),
            label: 'To read',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_add,
              color: Colors.lightBlue,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.lightBlue,
            ),
            label: 'My Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[800],
        onTap: _onItemTapped,
      ),
      backgroundColor: Colors.lightBlue.shade50,
      body: Column(
        children: [
          Greeting(),
          SizedBox(
            height: 10,
          ),
          Search(),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Text(
                'Courses',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10),
          Filters(),
          SizedBox(
            height: 20,
          ),
          ListOfCourse(),
        ],
      ),
    );
  }
}

class Greeting extends StatelessWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 130.0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 5),
                  child: Text(
                    'Hello, ',
                    style: TextStyle(color: Colors.grey, fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Ungarbaev Nurlan',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.waving_hand,
                      size: 24,
                      color: Colors.yellow.shade800,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.only(top: 47.5, left: 20),
              child: Image.asset('assets /image/191416.jpeg'),
            ),
          ],
        ),
      );
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SearchState();
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 25.0, right: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12.0)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // prefixIcon: Icon(Icons.search),
                      // suffix: Icon(Icons.search),
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Search',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10),
            child: Icon(
              Icons.ballot_rounded,
              color: Colors.lightBlue,
              size: 45,
            ),
          ),
        ],
      ),
    );
  }
}

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FiltersState();
}

class FiltersState extends State<Filters> {
  bool isSelected = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ChoiceChip(
                  avatar: CircleAvatar(
                    child: Icon(
                      Icons.local_fire_department_rounded,
                      color: Colors.lightBlue,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  label: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Center(child: Text('All topic')),
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
              SizedBox(width: 20.0),
              Expanded(
                child: ChoiceChip(
                  avatar: CircleAvatar(
                    child: Icon(
                      Icons.electric_bolt,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.purple.shade300,
                  ),
                  label: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Center(child: Text('Popular')),
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
          SizedBox(
            width: 20.0,
          ),
          SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(
                child: ChoiceChip(
                  avatar: CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.amber,
                  ),
                  label: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Center(child: Text('Newest')),
                  ),
                  selected: isSelected3,
                  onSelected: (bool value) {
                    isSelected = !isSelected;
                  },
                  pressElevation: 20,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: ChoiceChip(
                  avatar: CircleAvatar(
                    child: Icon(
                      Icons.bookmark_outlined,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.tealAccent.shade700,
                  ),
                  label: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Center(child: Text('Advance')),
                  ),
                  selected: isSelected4,
                  onSelected: (bool value) {
                    isSelected = !isSelected;
                  },
                  pressElevation: 20,
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ListOfCourse extends StatefulWidget {
  const ListOfCourse({Key? key}) : super(key: key);

  @override
  State<ListOfCourse> createState() => _ListOfCourseState();
}

class _ListOfCourseState extends State<ListOfCourse> {
  final List<BoxInfo> _list = [
    BoxInfo(
        Colors.lightBlue,
        'assets /image/31.png',
        'Digital Design Thinking',
        'Create by Ravshan Agency',
        Icons.file_copy,
        '17 files',
        Icons.watch_later_outlined,
        '40 min',),
    BoxInfo(
        Colors.orange,
        'assets /image/Webinar_1.png',
        'Web Developer',
        'Create by Ravshan Agency',
        Icons.file_copy,
        '17 files',
        Icons.watch_later_outlined,
        '40 min',),
    BoxInfo(
        Colors.purple,
        'assets /image/Webinar_1.png',
        'Web Developer',
        'Create by Ravshan Agency',
        Icons.file_copy,
        '17 files',
        Icons.watch_later_outlined,
        '40 min',),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: _list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              print(_list[index].strlimage);
              return GestureDetector(
                onTap: () {
                  Get.to(() => HomePageWeb(),
                      arguments: HomePageWebArguments(boxInfo: _list[index]));
                },
                child: InfoOfCourseItem(
                  image: _list[index].strlimage,
                  colors: _list[index].color,
                  titles: _list[index].title,
                  LeftIcons: _list[index].LeftIcon,
                  Subtitles: _list[index].Subtitle,
                  Ldescriptions: _list[index].Ldescription,
                  RightIcons: _list[index].RightIcon,
                  Rdescriptions: _list[index].Rdescription,
                ),
              );
            }),
      ),
    );
  }
}

class InfoOfCourseItem extends StatelessWidget {
  final String image;
  final Color colors;
  final String titles;
  final String Subtitles;
  final IconData LeftIcons;
  final String Ldescriptions;
  final IconData RightIcons;
  final String Rdescriptions;

  const InfoOfCourseItem(
      {Key? key,
      required this.image,
      required this.colors,
      required this.titles,
      required this.LeftIcons,
      required this.Subtitles,
      required this.Ldescriptions,
      required this.RightIcons,
      required this.Rdescriptions,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: colors),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titles,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Create by Ravshan Agency'),
                  ],
                )),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Icon(
                        LeftIcons,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(Ldescriptions),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Icon(
                        RightIcons,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(Rdescriptions),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BoxInfo {
  final Color color;
  final String strlimage;
  final String title;
  final String Subtitle;
  final IconData LeftIcon;
  final String Ldescription;
  final IconData RightIcon;
  final String Rdescription;

  BoxInfo(
    this.color,
    this.strlimage,
    this.title,
    this.Subtitle,
    this.LeftIcon,
    this.Ldescription,
    this.RightIcon,
    this.Rdescription,
  );
}
