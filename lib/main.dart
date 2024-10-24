import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      "title": "Wedding Decoration Premium",
      "harga": "Rp 20.000.0000",
      "hargaa": "Rp 25.000.000",
      "rating": "4,4k",
      "view": "21.8 rb",
      "image": "assets/images/flutter_3.jpg"
    },
    {
      "title": "Wedding Decoration Large",
      "harga": "Rp 19.960.0000",
      "hargaa": "Rp 23.990.000",
      "rating": "4,9k",
      "view": "24.8 rb",
      "image": "assets/images/flutter_4.jpg"
    },
    {
      "title": "Wedding Decoration Medium",
      "harga": "Rp 18.570.0000",
      "hargaa": "Rp 22.500.000",
      "rating": "4,1k",
      "view": "20.5 rb",
      "image": "assets/images/flutter.jpg"
    },
    {
      "title": "Wedding Decoration Small",
      "harga": "Rp 16.370.0000",
      "hargaa": "Rp 20.210.000",
      "rating": "3,9k",
      "view": "21.8 rb",
      "image": "assets/images/flutter_2.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Decor Vanue Hari Ini',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        backgroundColor: Colors.white, 
        foregroundColor: Colors.black, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 10, 
            mainAxisSpacing: 10, 
            childAspectRatio: 3 / 5, 
          ),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color.fromARGB(255, 254, 234, 199),
              child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset('assets/images/R.jpeg',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text("Decoration vanue",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                      ),
                      SizedBox(width: 6),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 10,
                        child: Icon(Icons.check, color: Colors.white, size: 10),
                      )
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: 
                    Image.asset(
                      data[index]['image']!,
                      height: 115,
                      width: 115,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index]['title']!,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              data[index]['harga']!,
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.red
                              ),
                            ),
                            SizedBox(width: 7),
                            Text(
                              data[index]['hargaa']!,
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 7,
                              ),
                            ),
                          ]
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 16),
                            SizedBox(width: 4), 
                            Text(data[index]['rating']!,
                            style: TextStyle(
                              fontSize: 10
                            ),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.visibility,size: 20),
                            SizedBox(width: 4), 
                            Text(data[index]['view']!,
                            style: TextStyle(
                              fontSize: 10
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            SizedBox(width: 100),
                            Icon(Icons.bookmark_border, size: 20),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              ),
            );
          },
        ),
      ),
    );
  }
}
