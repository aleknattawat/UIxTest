import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(175, 255, 255, 255)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(175, 255, 255, 255)),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(224, 41, 154, 116),
            height: screenSize.height,
            width: screenSize.width,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 2,
                    right: 3,
                  ),
                  height: screenSize.height * 0.994,
                  width: screenSize.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(182, 255, 255, 255),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(
                          181, 245, 245, 108), // สีขาวอยู่ในสีเทา
                    ),
                    height: screenSize.height * 0.3,
                    width: screenSize.width,
                    child: Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          margin: EdgeInsets.only(top: screenSize.height * 0.4),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Fruit nutrition meal',
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 4, // ค่าคะแนนเริ่มต้น
                                        itemCount:
                                            5, // จำนวนไอคอนที่ใช้แสดงคะแนน
                                        allowHalfRating:
                                            true, // อนุญาตให้ให้คะแนนได้เฉพาะครึ่ง (0.5)
                                        itemSize: 18, // ขนาดของไอคอนคะแนน
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(224, 41, 154, 116),
                                        ), // ตัวกำหนดรูปแบบของไอคอนคะแนน
                                        onRatingUpdate: (rating) {
                                          // การอัปเดตคะแนนเมื่อผู้ใช้ให้คะแนน
                                          debugPrint(rating.toString());
                                        },
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "4.5",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text("1287 comments",
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.circle_outlined,
                                        size: 16,
                                        color: Color.fromARGB(195, 255, 153, 0),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Normal',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 16,
                                        color:
                                            Color.fromARGB(224, 41, 154, 116),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        '17km',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Icon(
                                        CupertinoIcons.clock,
                                        size: 16,
                                        color: Color.fromARGB(195, 255, 153, 0),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '32min',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Introduce",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: Text(
                                    "The passta in the picture USES alkaline noodles, which many people are not very familiar with. The sauce is also very popular with the local people. if",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        height: 2),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Expand ',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(224, 41, 154, 116),
                                          fontSize: 13,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color:
                                            Color.fromARGB(224, 41, 154, 116),
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            51, 162, 129, 254)),
                                    child: Row(
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(12)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.white
                                                      .withOpacity(0.3),
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  offset: const Offset(0, 3),
                                                )
                                              ]),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '-',
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      color: Colors.grey),
                                                ),
                                                SizedBox(
                                                  width: 14,
                                                ),
                                                Text(
                                                  '2',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: 16,
                                                ),
                                                Icon(
                                                  CupertinoIcons.add,
                                                  size: 14,
                                                  color: Colors.grey,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12)),
                                            color: const Color.fromARGB(
                                                181, 85, 204, 165),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color.fromARGB(
                                                        181, 85, 204, 165)
                                                    .withOpacity(0.3),
                                                spreadRadius: 2,
                                                blurRadius: 5,
                                                offset: const Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  CupertinoIcons.money_dollar,
                                                  size: 16,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "28",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Add to cart',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 350, // กำหนดระยะห่างจากด้านล่าง
            left: 255,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(181, 85, 204, 165),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
