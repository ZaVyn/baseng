
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_if22c/config/assets.dart';
import 'package:project_if22c/screen/admin/home_screen.dart';

class DasboardAdmin extends StatefulWidget {
  const DasboardAdmin({super.key});

  @override
  State<DasboardAdmin> createState() => _DasboardAdminState();
}

class _DasboardAdminState extends State<DasboardAdmin> {
  int selectedIndex = 0;
  String title = "";
  List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
  ];

  @override
  
void initState(){
  super.initState();
  title = "default";
}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          elevation: 2,
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: title == 'default' ?
          Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  'Hai, ',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: assets.colorPrimary,
                                  ),
                                ),
                                Text(
                                  'Nama',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: assets.colorPrimary,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Jabatan',
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: assets.colorPrimaryDark,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: assets.colorAccent,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/a0/UNIVERSITASTEKNOKRAT.png'),
                          backgroundColor: assets.colorPrimaryDark,
                        ),
                      ),
                    ],
                  ),
                )
                : Text(
                  title,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff020202),
                  ),
                ),
        ),
        preferredSize: Size.fromHeight(70),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Color.fromARGB(150, 255, 159, 159),
          selectedItemColor: assets.colorPrimary,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "navbar 1",
              icon: Icon(Icons.explore),
            ),
            BottomNavigationBarItem(
              label: "navbar 2",
              icon: Icon(Icons.bar_chart),
            ),
            BottomNavigationBarItem(
              label: "navbar 3",
              icon: Icon(Icons.calendar_today),
            ),
          ],
        ),
      ),
      body: widgetOptions.elementAt(selectedIndex),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
      switch (index) {
        case 0:
          {
            title = 'default';
          }
          break;
        case 1:
          {
            title = 'navbar 1';
          }
          break;
        case 2:
          {
            title = 'navbar 2';
          }
          break;
        case 3:
          {
            title = 'navbar 3';
          }
          break;
      }
    });
  }
}