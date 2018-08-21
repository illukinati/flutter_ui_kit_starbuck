import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_starbuck/screens/homeScreen.dart';
import 'package:flutter_ui_kit_starbuck/screens/mapScreen.dart';
import 'package:flutter_ui_kit_starbuck/screens/payScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  int index = 0;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {      
      super.dispose();
      tabController.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          HomeScreen(),
          PayScreen(),
          MapScreen(),
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(        
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
            tabController.index = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(            
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: index == 0 ? Colors.green[700] : Colors.grey[400],
            ),
            title: new Text(
              "Home",
              style: new TextStyle(
                  color: index == 0 ? Colors.green[700] : Colors.grey[400],
                  fontSize: 14.0),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.payment,
              color: index == 1 ? Colors.green[700] : Colors.grey[400],
            ),
            title: new Text(
              "Pay",
              style: new TextStyle(
                  color: index == 1 ? Colors.green[700] : Colors.grey[400],
                  fontSize: 14.0),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.store,
              color: index == 2 ? Colors.green[700] : Colors.grey[400],
            ),
            title: new Text(
              "Store",
              style: new TextStyle(
                  color: index == 2 ? Colors.green[700] : Colors.grey[400],
                  fontSize: 14.0),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.card_giftcard,
              color: index == 3 ? Colors.green[700] : Colors.grey[400],
            ),
            title: new Text(
              "Gift",
              style: new TextStyle(
                  color: index == 3 ? Colors.green[700] : Colors.grey[400],
                  fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
