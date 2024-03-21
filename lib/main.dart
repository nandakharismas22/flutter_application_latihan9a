import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Peduli Lindungi',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          elevation: 30,
// Menambahkan drop shadow dengan tinggi 4
        ),
        body: Center(
          child: ListView(padding: EdgeInsets.all(0), children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 600,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Text(
                              'Entering a public space?',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 45,
                            left: 10,
                            child: Text(
                              'Stay alert to stay safe',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 15,
                      right: 10,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Tambah jarak antara konten sebelumnya dengan menu
                SingleChildScrollView(
                  child: GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      menuItem('COVID-19 Vaccine',
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      menuItem('COVID-19 Test Results',
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      menuItem('EHAC',
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      menuItem('Travel Regulations',
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      menuItem('Telemedicine',
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      menuItem('Healthcare Facility',
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Widget menuItem(String title, String imageUrl) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Column(
        children: [
          Image.network(imageUrl, width: 95, height: 95),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
            child: Text(title, textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
