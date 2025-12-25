  import 'package:flutter/material.dart';
  import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      backgroundColor: Color(0xFFf2f2ce),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffd9c999),
              ),
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
                        fontWeight: FontWeight.w800,
                        color: Color(0xffaf0000),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffac512a),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://favforward.com/app/uploads/2016/10/ban-brown-1-672x372.jpg",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Text(
                      "นที วงศ์แสงอนันต์",
                      style: TextStyle(
                        color: Color(0xffaf0000),
                      ),
                    ),
                    Text(
                      "natiee.wongsang@e-tech.ac.th",
                      style: TextStyle(
                        color: Color(0xffaf0000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(width: 50, height: 80),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xffeb8c55),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                            Icons.phone,
                            size: 40,
                            color: Color(0xffaf0000)
                        ),
                      ),
                      SizedBox(
                          width: 10
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "เบอร์",
                            style: TextStyle(
                              color: Color(0xffaf0000),
                            ),
                          ),
                          Text(
                            "099-64587898",
                            style: TextStyle(
                              color: Color(0xffaf0000),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 2.5,
                            width: 150,
                            color: Color(0xffac512a),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 50, height: 80),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xffeb8c55),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                            Icons.cake,
                            size: 40,
                            color: Color(0xffaf0000)
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "วันเกิด",
                            style: TextStyle(
                              color: Color(0xffaf0000),
                            ),
                          ),
                          Text(
                            "1 มีนาคม 2548",
                            style: TextStyle(
                              color: Color(0xffaf0000),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 2.5,
                            width: 150,
                            color: Color(0xffac512a),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 50, height: 80),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xffeb8c55),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.pin_drop,
                          size: 40,
                          color: Color(0xffaf0000),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ที่อยู่",
                            style: TextStyle(
                              color: Color(0xffaf0000),
                            ),
                          ),
                          Text(
                            "ศรีรชา ชลบุรี",
                            style: TextStyle(
                              color: Color(0xffaf0000),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 2.5,
                            width: 150,
                            color: Color(0xffac512a),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 50, height: 80),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xffeb8c55),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                            Icons.school,
                            size: 40,
                            color: Color(0xffaf0000)
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "การศึกษา",
                            style: TextStyle(
                              color: Color(0xffaf0000),
                            ),
                          ),
                          Text(
                            "วิทยาลัย อีเทค",
                            style: TextStyle(
                              color: Color(0xffaf0000),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 2.5,
                            width: 150,
                            color: Color(0xffac512a),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff99ae83),
                      foregroundColor: Color(0xfff2fac0),
                    ),
                    child: Text(
                      "Change Page",
                      style: TextStyle(
                        fontWeight: FontWeight.w900
                      ),
                    ),
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
      backgroundColor: Color(0xFFf2f2ce),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj5K_Hlzgq-p_0Xfv_vykmcOtuXhBI7VFBxg&s",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "10",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "กำลังติตาม",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 3,
                      height: 40,
                      color: Color(0xffd9c999),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "10.9M",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "ผู้ติดตาม",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 3,
                      height: 40,
                      color: Color(0xffd9c999),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "200K",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "ถูกใจและบันทึก",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),//รูปด้านบน รายละเอียด
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Natiee Wongsanganan",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                    ),
                  ],
                ),//ชื่อ
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.tiktok,
                      size: 15,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "natiee555",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black54,
                    ),
                  ],
                ),// ลิ้งค์
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff99ae83),
                          foregroundColor: Color(0xfff2fac0),
                          fixedSize: Size(250, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "ติมตาม",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.share,
                        size: 24,
                      ),
                    ),
                  ],
                ),//ปุ่ม
                SizedBox(
                  height: 20,
                ),
                GridView.count(
                  shrinkWrap: true, //ใหญ่เท่าที่มี
                  physics: NeverScrollableScrollPhysics(), // ปิดการ scroll ของ grid (ให้ไป scroll ที่ตัวแม่แทน)
                  crossAxisCount: 2,          // จำนวนคอลัมน์ (2 ช่อง)
                  crossAxisSpacing: 10,       // ระยะห่างระหว่างรูปซ้าย-ขวา
                  mainAxisSpacing: 10,        // ระยะห่างระหว่างรูปบน-ล่าง
                  children: [
                    Image.network(
                        "https://stickershop.line-scdn.net/stickershop/v1/product/534/LINEStorePC/main.png?v=13",
                        fit: BoxFit.cover
                    ),
                    Image.network(
                        "https://resource.nationtv.tv/uploads/images/contents/w1024/2023/12/6ozym42bJ6oGLflW0RCm.webp?x-image-process=style/lg-webp",
                        fit: BoxFit.cover
                    ),
                    Image.network(
                        "https://stickershop.line-scdn.net/stickershop/v1/product/22679134/LINEStorePC/main.png?v=1",
                        fit: BoxFit.cover
                    ),
                    Image.network(
                        "https://img.kapook.com/u/2016/wanchalerm/Line_03_59/Choco_1.jpg",
                        fit: BoxFit.cover
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
