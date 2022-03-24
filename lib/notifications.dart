import 'package:flutter/material.dart';
import 'package:proj_cfc/popup.dart';
import 'home.dart';
import 'donate.dart';

class Notificationn extends StatelessWidget {
  const Notificationn({Key? key}) : super(key: key);

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
                      color: Colors.blue,
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
                  top: 50,
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              "Notifications",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            top: 230,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 80,
                              width: 380,
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15, top: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 2,
                                  ),
                                  color:
                                      const Color.fromRGBO(210, 210, 210, 100),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.notifications_active,
                                        color: Colors.grey,
                                      )),
                                  const Spacer(),
                                  const Text(
                                    "Rupees 8000 used for Children Education \n-Save the Children",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 230,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 80,
                              width: 380,
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 2,
                                  ),
                                  color:
                                      const Color.fromRGBO(210, 210, 210, 100),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.notifications_active,
                                        color: Colors.grey,
                                      )),
                                  const Spacer(),
                                  const Text(
                                    "Rupees 15000 used for women Empowerment \n-Smile Foundation",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Spacer(),
                        ],
                      ))),
            ],
          )),
    );
  }
}
