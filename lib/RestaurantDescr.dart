import 'package:flutter/material.dart';

import 'Home page.dart';

class RestaurantDescriptionPage extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantDescriptionPage({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(restaurant.imagePath, fit: BoxFit.cover),
              SizedBox(height: 10),
              Text(
                restaurant.name,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 10),
              Text(
                'Description',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              Text(
                'Чайханский плов - плов, который никого не оставит равнодушным. Ароматный, возможно, самый вкусный наш традиционный плов, приготовленный из отборного мяса, желтой моркови с добавлением репчатого лука и ароматных специй - лучше не бывает!',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
