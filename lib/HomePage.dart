import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: Container(
        child: Column(
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
          ],
        ),
      ),
      // backgroundColor: Colors.lightBlue.shade50,
      // body: SingleChildScrollView(
      // ),
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
                  padding: EdgeInsets.only(top: 20.0),
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
                    Text(
                      'Ungarbaev Nurlan',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
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
            Padding(
              padding: const EdgeInsets.only(top: 47.5),
              child: Icon(
                Icons.account_circle,
                size: 60,
                color: Colors.deepPurple.shade200,
              ),
            ),
          ],
        ),
      );
}

class Search extends StatefulWidget {
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
  @override
  State<StatefulWidget> createState() => FiltersState();
}

class FiltersState extends State<Filters> {
  int tag = 1;
  List<String> options = [
    'All Topic',
    'Popular',
    'Newest',
    'Advance',

  ];
  List myIcons = [
    Icons.local_fire_department_outlined,
    Icons.electric_bolt,
    Icons.star,
    Icons.bookmark_outlined,
  ];
  int? _value = 1;


  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List<Widget>.generate(
        3,
            (int index) {
          return ChoiceChip(
            label: Text('Item $index'),
            selected: _value == index,
            onSelected: (bool selected) {
              setState(() {
                _value = selected ? index : null;
              });
            },
          );
        },
      ).toList(),
    );
  }
}
