import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ), //.all paddingทุกด้าน หรือ กำหนดด้านด้วย .only ตามด้วยด้านที่ต้องการ เช่น.only(top) หรือ bottom แทน symmetric
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: Colors.orange[900],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0jgMPA8wUsG-YS-_VnxWpjCG09qCzuVfKQQ&s",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Text("นที วงศ์แสงอนันต์"),
                    Text("natiee.wongsang@e-tech.ac.th"),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 50, height: 80),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.phone, size: 40, color: Colors.green),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("เบอร์"), Text("099-64587898")],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 50, height: 80),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.cake, size: 40, color: Colors.pink),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("วันเกิด"), Text("1 มีนาคม 2548")],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 50, height: 80),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.pin_drop,
                          size: 40,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("ที่อยู่"), Text("ศรีรชา ชลบุรี")],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 50, height: 80),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blue[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.school, size: 40, color: Colors.blue),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("การศึกษา"), Text("วิทยาลัย อีเทค")],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Change Page"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding:EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0jgMPA8wUsG-YS-_VnxWpjCG09qCzuVfKQQ&s",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0jgMPA8wUsG-YS-_VnxWpjCG09qCzuVfKQQ&s",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}
