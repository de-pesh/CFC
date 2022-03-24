import 'package:flutter/material.dart';
import 'home.dart';
import 'notifications.dart';
import 'popup.dart';
import 'donation.dart';

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      color: Colors.purple,
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
                      color: Colors.blue,
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
          body: Stack(
            children: [
              Positioned(
                  right: 0,
                  left: 0,
                  top: 0,
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Positioned(
                            top: 230,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 70,
                              width: 380,
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15, top: 50),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  color:
                                      const Color.fromRGBO(210, 210, 210, 100),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                children: [
                                  const Spacer(flex: 1),
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
                                          image: AssetImage("images/photo.jpg"),
                                        )),
                                  ),
                                  const Spacer(
                                    flex: 7,
                                  ),
                                  const Text(
                                    "Ankit",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(
                                    flex: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "Charity Organisations",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 0,
                            left: 0,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Donation()),
                                );
                              },
                              child: Container(
                                height: 70,
                                width: 380,
                                margin: const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 15, top: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    color: const Color.fromRGBO(
                                        210, 210, 210, 100),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Row(
                                  children: [
                                    const Spacer(flex: 1),
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
                                            image: AssetImage("images/stc.jpg"),
                                          )),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      "Save the \nChildren",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    const Spacer(),
                                    Container(
                                        width: 100,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.blue,
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.greenAccent,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "DONATE",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        )),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //const Spacer(flex: 20),
                          Positioned(
                            top: 200,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 70,
                              width: 380,
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15, top: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  color:
                                      const Color.fromRGBO(210, 210, 210, 100),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                children: [
                                  const Spacer(flex: 1),
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
                                              AssetImage("images/pratham.jpg"),
                                        )),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "Pratham",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Spacer(),
                                  Container(
                                      width: 100,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 3,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.greenAccent,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "DONATE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      )),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 70,
                              width: 380,
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15, top: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  color:
                                      const Color.fromRGBO(210, 210, 210, 100),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                children: [
                                  const Spacer(flex: 1),
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
                                          image: AssetImage("images/smile.jpg"),
                                        )),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "Smile\nFoundation",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Spacer(),
                                  Container(
                                      width: 100,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 3,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.greenAccent,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "DONATE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      )),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 70,
                              width: 380,
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15, top: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  color:
                                      const Color.fromRGBO(210, 210, 210, 100),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                children: [
                                  const Spacer(flex: 1),
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
                                          image: AssetImage("images/md.jpg"),
                                        )),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "Make a\nDifference",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Spacer(),
                                  Container(
                                      width: 100,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 3,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.greenAccent,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "DONATE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      )),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ))),
            ],
          )),
    );
  }
}
