import 'package:flutter/material.dart';
import 'notifications.dart';
import 'donate.dart';
import 'home.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

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
                    color: Colors.purple,
                  )),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.dehaze,
                    color: Colors.blue,
                  )),
              const Spacer(),
            ],
          ),
        ),
        body: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                child: Text(
                  ' ',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('images/ankit.jpg'))),
              ),
              ListTile(
                leading: const Icon(Icons.input),
                title: const Text('Welcome'),
                onTap: () => {},
              ),
              ListTile(
                leading: const Icon(Icons.verified_user),
                title: const Text('Profile'),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                leading: const Icon(Icons.border_color),
                title: const Text('Feedback'),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Logout'),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
