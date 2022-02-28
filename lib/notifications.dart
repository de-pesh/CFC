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
                  top: 0,
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        children: const [
                          Spacer(),
                          Center(
                            child: Text(
                              "No notification",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Spacer(),
                        ],
                      ))),
            ],
          )),
    );
  }
}
