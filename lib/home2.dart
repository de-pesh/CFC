import 'package:flutter/material.dart';
import 'popup.dart';
import 'notifications.dart';
import 'donate.dart';
import 'home.dart';

const int f = 1;

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
      title: "CFC",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //icons
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Row(
            children: [
              const Spacer(
                flex: f,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.blue,
                  )),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Donate()),
                    );
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.purple,
                  )),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notificationn()),
                    );
                  },
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.purple,
                  )),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavDrawer()),
                    );
                  },
                  icon: const Icon(
                    Icons.dehaze,
                    color: Colors.purple,
                  )),
              const Spacer(),
            ],
          ),
        ),
        //body
        body: Stack(
          children: [
            Positioned(
                top: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    //for body
                    children: [
                      //profile one
                      Positioned(
                        top: 50,
                        right: 0,
                        left: 0,
                        child: Container(
                            height: 290,
                            width: 400,
                            margin: const EdgeInsets.only(
                                right: 20, left: 20, top: 40),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: const Color.fromRGBO(200, 220, 220, 100),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                Positioned(
                                  top: 70,
                                  right: 0,
                                  left: 0,
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    margin: const EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        ),
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                        image: const DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage("images/photo.jpg"),
                                        )),
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment(0, 0.1),
                                  child: Text(
                                    "Ankit",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                //for sliders
                                Positioned(
                                  top: 230,
                                  right: 0,
                                  left: 0,
                                  child: Container(
                                    height: 90,
                                    width: 380,
                                    margin: const EdgeInsets.only(
                                        left: 15, right: 15, bottom: 15),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                        color: const Color.fromRGBO(
                                            210, 210, 210, 100),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const MyApp()),
                                              );
                                            },
                                            icon: const Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.grey,
                                            )),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 1,
                                              ),
                                              shape: BoxShape.circle,
                                              color: Colors.grey,
                                              image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image:
                                                    AssetImage("images/ho.jpg"),
                                              )),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          "Hypothetical\nOrganisation",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Spacer(),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.grey,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),

                      //blue box
                      Positioned(
                        top: 350,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 170,
                          width: 380,
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(0, 142, 186, 100),
                                width: 2,
                              ),
                              color: const Color.fromRGBO(0, 195, 255, 100),
                              borderRadius: BorderRadius.circular(15)),
                          //for percent bar and donated
                          child: Column(
                            children: [
                              Positioned(
                                top: 360,
                                right: 0,
                                left: 0,
                                child: Container(
                                    height: 40,
                                    width: 360,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 50),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Row(
                                      children: [
                                        const Spacer(),
                                        const Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            "left   ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 27,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Positioned(
                                            child: Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          child: const VerticalDivider(
                                            color: Colors.black,
                                            thickness: 3,
                                          ),
                                        )),
                                        const Spacer(),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            "used",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 27,
                                              color: Colors.green[900],
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                      ],
                                    )),
                              ),
                              Positioned(
                                top: 395,
                                right: 0,
                                left: 0,
                                child: Container(
                                    height: 30,
                                    width: 360,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 50),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Row(
                                      children: const [
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            "10000",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 23,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Spacer(
                                          flex: 5,
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            "10000",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 23,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    )),
                              ),
                              Container(
                                height: 25,
                                width: 380,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 3,
                                    ),
                                    color:
                                        const Color.fromRGBO(0, 195, 255, 100),
                                    borderRadius: BorderRadius.circular(15)),
                                // for used vs left
                                child: Row(
                                  children: [
                                    Container(
                                      height: 18,
                                      width: 130,
                                      margin: const EdgeInsets.only(left: 1),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red,
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 18,
                                      width: 130,
                                      margin: const EdgeInsets.only(right: 1),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.green[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                "Donated",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "20,000 INR",
                                style: TextStyle(fontSize: 22),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "Details of your fund used",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Container(),
                        ],
                      ),

                      const Spacer(),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
