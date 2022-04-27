import 'package:flutter/material.dart';

void main() {
  runApp(MainCl());
}

class MainCl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          toolbarHeight: 50,
          title: const Text(
            'Weather Forecast',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: _buildbody(), //_buildBody(),
      ),
    );
  }
}

Widget _buildbody() {
  return Column(
    children: <Widget>[
      _searchAndField(),
      _cityDetail(),
      _temperatureDetail(),
      _extraWeatherDetail(),
      BodyListView(),
    ],
  );
}

Container _searchAndField() {
  return Container(
    margin: const EdgeInsets.fromLTRB(8, 6, 8, 14),
    padding: const EdgeInsets.all(2),
    color: Colors.red,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const <Widget>[
        Expanded(
          flex: 1,
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 27,
          ),
        ),
        Expanded(
          flex: 7,
          child: Text(
            'Enter City Name',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

Container _cityDetail() {
  return Container(
      margin: const EdgeInsets.fromLTRB(20, 7, 15, 9),
      padding: const EdgeInsets.all(6),
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Text(
            'Ivanovsk Oblast, RU',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          Divider(
            color: Colors.red,
          ),
          Text(
            'Tuesday, Mar 28, 2022',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ));
}

Container _temperatureDetail() {
  return Container(
    margin: const EdgeInsets.fromLTRB(90, 10, 85, 15),
    padding: const EdgeInsets.all(6),
    color: Colors.red,
    child: Row(children: <Widget>[
      const Expanded(
        child: Icon(
          Icons.wb_sunny,
          color: Colors.white,
          size: 70,
        ),
      ),
      Expanded(
        flex: 1,
        child: Column(
          children: const [
            Text(
              '14 °F',
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              'LIGHT SNOW',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    ]),
  );
}

Container _extraWeatherDetail() {
  return Container(
    margin: const EdgeInsets.fromLTRB(70, 10, 65, 44),
    padding: const EdgeInsets.all(10),
    color: Colors.red,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Icon(
              Icons.ac_unit_sharp,
              color: Colors.white,
              size: 27,
            ),
            Divider(
              color: Colors.red,
              height: 2,
            ),
            Text(
              '5',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider(
              color: Colors.red,
              height: 2,
            ),
            Text(
              'km/hr',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Icon(
              Icons.ac_unit_sharp,
              color: Colors.white,
              size: 27,
            ),
            Divider(
              color: Colors.red,
              height: 2,
            ),
            Text(
              '3',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider(
              color: Colors.red,
              height: 2,
            ),
            Text(
              '%',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Icon(
              Icons.ac_unit_sharp,
              color: Colors.white,
              size: 27,
            ),
            Divider(
              color: Colors.red,
              height: 2,
            ),
            Text(
              '20',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Divider(
              color: Colors.red,
              height: 2,
            ),
            Text(
              '%',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Text(
        '7-DAY WEATHER FORECAST',
        style: TextStyle(
            fontSize: 17, color: Colors.white, fontWeight: FontWeight.w300),
      ),
      Container(
          width: 350,
          height: 120,
          decoration: BoxDecoration(color: Colors.red),
          child: _myListView()),
    ]);
  }
}

Widget _myListView() {
  final List<String> days = <String>[
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  final List<String> temperature = <String>[
    '6 °C',
    '5 °C',
    '14 °C',
    '11 °C',
    '16 °C',
    '15 °C',
    '12 °C'
  ];
  return ListView.builder(
      itemCount: days.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 80,
          width: 150,
          padding:
              const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.red.shade300,
            //borderRadius: BorderRadius.circular(2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '${days[index]}',
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${temperature[index]}',
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                  const Icon(
                    Icons.wb_sunny,
                    size: 40,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        );
      });
}
