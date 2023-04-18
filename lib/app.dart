import 'package:flutter/material.dart';
import 'package:flutter_m3/components/drawer.dart';
import 'package:flutter_m3/tabs/main_tab.dart';
import 'package:flutter_m3/tabs/text_tab.dart';
import 'package:flutter_m3/theme.dart';

import 'components/color_picker.dart';
import 'components/search_bar.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _dark = false;
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "M3 custom",
      debugShowCheckedModeBanner: false,
      theme: appTheme(
        color: _color,
        isDark: _dark,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter M3'),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _dark = !_dark;
                  });
                },
                icon: Icon(_dark ? Icons.dark_mode : Icons.light_mode),
              ),
              M3ColorPicker(action: (Color color) {
                setState(() {
                  _color = color;
                });
              }),
              Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      showSearch(
                        context: context,
                        delegate: CustomSearchDelegate(),
                      );
                    },
                    icon: const Icon(Icons.search),
                  );
                },
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.apps_rounded)),
                Tab(icon: Icon(Icons.text_fields)),
              ],
            ),
          ),
          drawer: const M3Drawer(),
          bottomNavigationBar: NavigationBar(
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'User',
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              MainTab(),
              TextTab(),
            ],
          ),
        ),
      ),
    );
  }
}
