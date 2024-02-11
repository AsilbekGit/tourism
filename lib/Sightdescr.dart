import 'package:flutter/material.dart';

import 'Home page.dart';

class SightDescriptionPage extends StatelessWidget {
  final Sight sight;

  SightDescriptionPage({required this.sight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sight.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(sight.imagePath, fit: BoxFit.cover),
              SizedBox(height: 10),
              Text(
                sight.name,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 10),
              Text(
                'Description',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              Text(
                'Uzbekistan is one of the fascinating countries in Central Asia and famous for its Silk Road cities of Samarkand, Bukhara, and Khiva. Twice the size of the UK, it has a rich cultural heritage and a long history steeped in tradition. You won’t be surprised to learn that it is home to four significant UNESCO World Heritage sites and six UNESCO Intangible Cultural Heritage listings. ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
