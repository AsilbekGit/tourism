import 'package:flutter/material.dart';

import 'Home page.dart';

class CityDescriptionPage extends StatelessWidget {
  final City city;

  CityDescriptionPage({required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(city.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(city.imagePath, fit: BoxFit.cover),
              SizedBox(height: 10),
              Text(
                city.name,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 10),
              Text(
                'Description',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              Text(
                'Samarkand  is an ancient city in the Samarkand region of the Republic of Uzbekistan . Administrative, economic and cultural center of the region (since 1938). The capital of the Republic in 1925-1930. It is located in the south-west of Uzbekistan, in the central part of the Zarafshan Valley (between the Dargom and Siyob canals). Average height is 695 m. 300 km from Tashkent. Tashkent-Dushanbe, Tashkent-Turkmanboshi, Tashkent-Uchkuduk-Kungirot railways, the Big Uzbek tract (Tashkent-Termiz road) pass through Samarkand. The inhabitants and farms of the city get water from the Shovdar and Bogishamol streams. The average temperature in July is 25.9°, the highest temperature is 40-42°, the average temperature in January is 0.2°, the lowest temperature is -26°. The area is 120 km². Population - 3 million 50 thousand people (2024). On September 15-16, 2022 , the Samarkand Summit, which was the 22nd meeting of the leaders of the SCO member states , was held.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
