import 'package:flutter/material.dart';
import 'package:nogod_app/payments.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _NogodState();
}

class _NogodState extends State<HomeScreen> {
  List service = [];
  @override
  void initState() {
    service.add("assets/img_2.png");
    service.add("assets/img_3.png");
    service.add("assets/img_4.png");
    service.add("assets/img_5.png");
    service.add("assets/img_6.png");
    service.add("assets/img_7.png");
    service.add("assets/img_8.png");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.density_small_sharp), label: "Transactions"),
          BottomNavigationBarItem(
              icon: Icon(Icons.family_restroom_outlined), label: "People"),
          BottomNavigationBarItem(
              icon: Icon(Icons.line_weight), label: "My Nagod"),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: "My account"),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Color(0xFFeb4622),
                        ),
                        child: Image.asset("assets/img.png"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 15, right: 100, left: 150),
                        child: const Text(
                          "নগদ",
                          style: TextStyle(
                              fontSize: 39,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 300, top: 16),
                        child: InkWell(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (cxt)=> AppBars()));
                            },
                            child: const Icon(
                              Icons.notification_add_rounded,
                              color: Colors.white,
                              size: 29,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 60, left: 60),
                        child: const Text(
                          "ডাক বিভাগের ডিজিটাল লেনদেন",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 90, left: 70),
                          height: 36,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 12),
                                  height: 41,
                                  width: 41,
                                  child: Image.asset("assets/img_1.png")),
                              const Text(
                                "Tap for balance",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFFfb7245)),
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    child: Container(
                        margin: const EdgeInsets.only(left: 27),
                        child: const Text(
                          "Service",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: const EdgeInsets.only(left: 12),
                    height: 220,
                    child: GridView.builder(
                      itemCount: service.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 18, crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return Image.asset("${service[index]}");
                      },
                    )),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.only(left: 27),
                child: const Text(
                  "Payments",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: const EdgeInsets.all(2),
                    padding: const EdgeInsets.all(10),
                    height: 300,
                    child: const Payments()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// fb7245
