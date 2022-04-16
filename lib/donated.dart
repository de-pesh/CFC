import 'package:flutter/material.dart';
//import 'package:proj_cfc/home2.dart';
//import 'home.dart';
import 'notifications.dart';
import 'popup.dart';
import 'donate.dart';
import 'update_home.dart';

int a = 0, b = 0, c = 0;
int d = 1, e = 1, f = 1;

class Donated extends StatefulWidget {
  const Donated({Key? key}) : super(key: key);

  @override
  State<Donated> createState() => _DonatedState();
}

class _DonatedState extends State<Donated> {
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
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyApppp()),
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
                            top: 0,
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
                                          image: AssetImage("images/stc.jpg"),
                                        )),
                                  ),
                                  const Spacer(
                                    flex: 7,
                                  ),
                                  const Text(
                                    "Donate to Save the Children",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(
                                    flex: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 230,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 500,
                              width: 380,
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  color:
                                      const Color.fromRGBO(210, 210, 210, 100),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Column(
                                children: [
                                  const Spacer(),
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
                                    "Enter Amount you want to donate  ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(15),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Amount",
                                        fillColor: Colors.white,
                                        filled: true,
                                        prefixIcon: Icon(Icons.money),
                                      ),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "Enter your password       ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(15),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Password",
                                        fillColor: Colors.white,
                                        filled: true,
                                        prefixIcon: Icon(Icons.security),
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                  RadioListTile(
                                    title: const Text('Health'),
                                    value: a,
                                    groupValue: d,
                                    onChanged: (selected) {
                                      setState(() {
                                        b = 0;
                                        e = 1;
                                        c = 0;
                                        f = 1;
                                        a = d;
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: const Text('Welfare'),
                                    value: b,
                                    groupValue: e,
                                    onChanged: (selected) {
                                      setState(() {
                                        a = 0;
                                        d = 1;
                                        c = 0;
                                        f = 1;
                                        b = e;
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: const Text('Education'),
                                    value: c,
                                    groupValue: f,
                                    onChanged: (selected) {
                                      setState(() {
                                        a = 0;
                                        d = 1;
                                        b = 0;
                                        e = 1;
                                        c = f;
                                      });
                                    },
                                  ),
                                  const Spacer(),
                                  Positioned(
                                    top: 200,
                                    right: 0,
                                    left: 0,
                                    child: Container(
                                      height: 70,
                                      width: 380,
                                      margin: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          bottom: 15,
                                          top: 10),
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
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const MyApppp()),
                                              );
                                            },
                                            child: Container(
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
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                )),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const MyApppp()),
                                              );
                                            },
                                            child: Container(
                                                width: 100,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.blue,
                                                    width: 3,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.red,
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    "CANCEL",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                )),
                                          ),
                                          const Spacer(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(flex: 1),
                          const Text(
                            "Last Transaction successful",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(
                            flex: 10,
                          ),
                        ],
                      ))),
            ],
          )),
    );
  }
}
