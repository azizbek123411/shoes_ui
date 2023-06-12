import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  static const String id = "library_page";

  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: const Color(0xffdcf0f9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffdcf0f9),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Color(0xff486672),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/1.png"),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25, top: 20),
              child: Text(
                "My Bag",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff486672),
                    fontSize: 40),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 10),
              child: Text(
                "Check and Pay Your Shoes",
                style: TextStyle(color: Color(0xff486672)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            contjon("assets/images/11.png", "Nike Jordan 'Why Not?' ZER0.3 PF",
                "\$", "180", "-   1   |   43"),
            contjon("assets/images/22.png", "Nike Joyride CC3 Setter", "\$",
                "175", "-   1   |   43"),
            contjon("assets/images/33.png", "Nike Jordan Aerospace 720", "\$",
                "190", "-   1   |   43"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  decoration: InputDecoration(
                      floatingLabelStyle: const TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: RichText(
                          text: TextSpan(
                            text: "\$",
                            style: TextStyle(
                                color: Color(0xff0dd8df),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: "545",
                                style: TextStyle(
                                  color: Color(0xff486672),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      labelText: '3 Item',
                      labelStyle:
                      const TextStyle(color: Colors.grey, fontSize: 15)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 80, right: 80),
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Color(0xff21ced7),
                  borderRadius: BorderRadius.circular(32.5),
                ),
                child: Center(
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget contjon(String imm, String text1, String text2, String text3,
      String text4) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              text1,
              style: TextStyle(color: Color(0xff486672), fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: RichText(
                        text: TextSpan(
                          text: text2,
                          style: TextStyle(
                              color: Color(0xff0dd8df),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: text3,
                              style: TextStyle(
                                color: Color(0xff486672),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        text4,
                        style:
                        TextStyle(color: Color(0xff486672), fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                  height: 90,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(imm))),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
