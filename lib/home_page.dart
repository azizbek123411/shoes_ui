import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    int colo = 0;
    Size size = MediaQuery
        .of(context)
        .size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xffdcf0f9),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              color: Color(0xffdcf0f9),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/1.png"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: double.infinity,
                  height: size.height * 0.05,
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
                        suffixIcon: CircleAvatar(
                          backgroundColor: const Color(0xff21ced7),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        labelText: 'Find vibers',
                        labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 20),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff486672),
                    fontSize: 50,
                  ),
                ),
              ),
              const SingleChildScrollView(
                child: TabBar(
                  dividerColor: Color(0xff486672),
                  labelColor: Color(0xff486672),
                  tabs: [
                    Tab(
                      text: "Nike",
                    ),
                    Tab(
                      text: "Adidas",
                    ),
                    Tab(
                      text: "Puma",),
                    Tab(text: "Balenciage"),
                    Tab(
                      text: "Converse",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                width: size.width,
                child: GridView.count(
                  childAspectRatio: 250 / 300,
                  crossAxisCount: 2,
                  children: [
                    rasm("assets/images/11.png", "\$", "180",
                        "Nike Jordan 'Why       Not?' ZER0.3 PF"),
                    rasm("assets/images/22.png", "\$", "175",
                        "Nike Joyride CC3      Setter"),
                    rasm("assets/images/33.png", "\$", "190",
                        "Nike Jordan Aerospace 720"),
                    rasm("assets/images/44.png", "\$", "190",
                        "Nike Air Jordan Retro 7 SE"),
                    SizedBox(
                      height: 0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rasm(String im, String text1, String text2, String text3) {
    bool colo = true;
    Size size1 = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.all(10),
      height: size1.height * 0.2,
      //width: size1.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: text1,
                    style: TextStyle(color: Color(0xff0dd8df), fontSize: 15),
                    children: [
                      TextSpan(
                        text: text2,
                        style: TextStyle(
                          color: Color(0xff486672),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                LikeButton(),
              ],
            ),
          ),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(im),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              text3,
              style: TextStyle(
                  height: 1.3,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff486672)),
            ),
          ),
        ],
      ),
    );
  }
}


class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        splashColor: Color(0xffdcf0f9),
        onPressed: () {
          setState(() {
            isLiked = !isLiked;
          });
        },
        icon: Icon(
          isLiked ? IconlyBold.heart : IconlyLight.heart,
          color: Colors.red,
        ));
  }