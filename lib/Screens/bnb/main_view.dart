import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/my_list_tile.dart';
import 'home_view.dart';
import 'setting_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<Widget> barScreens = [
    const HomeScreen(),
    const SettingScreen(),
  ];

  List<BottomNavigationBarItem> get navItem => [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: RichText(
          textDirection: TextDirection.rtl,
          text: const TextSpan(children: [
            TextSpan(
                text: "Al_Azhar ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white)),
            TextSpan(
              text: "University  ",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  color: Colors.white),
            ),
            TextSpan(
              text: "In Gaza",
              style: TextStyle(
                  letterSpacing: 4, fontSize: 12, color: Colors.amber),
            ),
          ]),
        ),
        leading: IconButton(onPressed: () => _key.currentState?.openDrawer(), icon: const Icon(Icons.menu,color: Colors.white,)),
      ),
      body: barScreens[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        shape: const CircleBorder(),
        onPressed: () {
          ///NOW Without action
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          height: 85,
          color: Colors.grey.shade600,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            onTap: (index) => setState(() {
              selectedIndex = index;
            }),
            currentIndex: selectedIndex,
            items: navItem,
          )),
      drawer: Drawer(
        elevation: 25,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color:Colors.teal,
              // height: 320,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 18),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50,
                        child: Center(child: Text("B",style: TextStyle(fontSize: 24),)),
                      ),
                      const SizedBox(height: 20,),
                      buildText("20201684"),
                      buildText("Bissan  qwaider",fontSize:30),
                        ],
                      ),








                ),
              ),
            ),
            const MyListTile(iconData: Icons.mail, text: 'bisaqwi06@gmail.com',),
            const Divider(
              height: 20,
              color: Colors.grey,
              thickness: 1,
            ),
            const MyListTile(iconData: Icons.inbox, text: 'Inbox',),
            const MyListTile(iconData: Icons.people, text: 'Contact Us',),
            const MyListTile(iconData: Icons.local_offer, text: 'Offers',),

          ],
        ),
      ),
    );
  }

  Text buildText(String text, {double fontSize=18}) => Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: fontSize),);
}
