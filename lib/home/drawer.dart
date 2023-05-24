import 'package:flutter/material.dart';
import 'package:soil_test/help.dart';
import '../tabs/second_tab.dart';
import 'bars.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      width: 300,
      elevation: 20.0,
      child: ListView(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.supervised_user_circle,
              size: 100,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text(
              'HOME',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Bars(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_chart_sharp),
            title: const Text(
              'Suggestions',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SecondTab(),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Divider(
                  thickness: 1,
                  color: Colors.black54,
                  endIndent: 2,
                ),
                ListTile(
                  leading: const Icon(Icons.login_outlined),
                  title: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Help(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.help),
                  title: const Text(
                    'help',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Help(),
                      ),
                    );
                  },
                ),
                const Divider(),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const ListTile(
                    leading: Icon(
                      Icons.abc_outlined,
                      size: 50,
                    ),
                    title: Text(
                      "Logo",
                      style: TextStyle(fontSize: 20),
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
