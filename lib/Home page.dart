import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  final List<City> popularCities = [
    City(name: 'Samarqand', imagePath: 'lib/assets/samarqand.jpg'),
    City(name: 'Bukhara', imagePath: 'lib/assets/bukhara.jpg'),
    City(name: 'Shakhrisabz', imagePath: 'lib/assets/shakhrisabz.jpg'),
    City(name: 'Khiva', imagePath: 'lib/assets/khiva.jpg'),
    City(name: 'Andijon', imagePath: 'lib/assets/Andijan.webp'),
  ];

  final List<Restaurant> restaurants = [
    Restaurant(name: 'Beshqozon', imagePath: 'lib/assets/res3.jpg'),
    Restaurant(name: 'uzbek', imagePath: 'lib/assets/res1.jpeg'),
    Restaurant(name: 'shurva', imagePath: 'lib/assets/res2.jpg'),
  ];

  final List<Sight> popularSights = [
    Sight(name: 'Sight 1', imagePath: 'lib/assets/sigh1.jpg'),
    Sight(name: 'Sight 2', imagePath: 'lib/assets/sigh2.jpg'),
    Sight(name: 'Sight 3', imagePath: 'lib/assets/sigh3.jpg'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourism App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Asilbek'),
              accountEmail: Text(''),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                  backgroundImage: AssetImage('lib/assets/avatar.png')
              ),
            ),
            ListTile(
              title: Text('Hotels'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Restaurants (more national restaurants)'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Airports'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Railways'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Travel guide'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Finance recommendation'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Support & Contacts(chatbot)'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          buildSectionTitle(context, 'Popular Cities'),
          buildHorizontalList(popularCities),
          buildSectionTitle(context, 'Restaurants'),
          buildHorizontalList(restaurants),
          buildSectionTitle(context, 'Popular Sights'),
          buildHorizontalList(popularSights),
        ],
      ),
    );
  }

  Widget buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildHorizontalList(List<Item> items) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (ctx, index) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 100,
                  child: Image.asset(items[index].imagePath,fit: BoxFit.cover,),
                ),
                Text(items[index].name),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Item {
  final String name;
  final String imagePath;

  Item({required this.name, required this.imagePath});
}

class City extends Item {
  City({required String name, required String imagePath})
      : super(name: name, imagePath: imagePath);
}

class Restaurant extends Item {
  Restaurant({required String name, required String imagePath})
      : super(name: name, imagePath: imagePath);
}

class Sight extends Item {
  Sight({required String name, required String imagePath})
      : super(name: name, imagePath: imagePath);
}
