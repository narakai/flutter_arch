import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arch/generated/l10n.dart';
import 'package:flutter_arch/ui/page/tab/project_page.dart';

import 'expand_page.dart';

List<Widget> pages = <Widget>[
  ProjectPage(),
  ExpandPage(),
  ProjectPage(),
  ProjectPage(),
  ProjectPage()
];

class TabNavigator extends StatefulWidget {
  TabNavigator({Key key}) : super(key: key);

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  var _pageController = PageController();
  int _selectedIndex = 0;
  DateTime _lastPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          if (_lastPressed == null ||
              DateTime.now().difference(_lastPressed) > Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
            _lastPressed = DateTime.now();
            return false;
          }
          return true;
        },
        child: PageView.builder(
          itemBuilder: (ctx, index) => pages[index],
          itemCount: pages.length,
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(S.of(context).tabHome),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            title: Text(S.of(context).tabProject),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            title: Text(S.of(context).wechatAccount),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_split),
            title: Text(S.of(context).tabStructure),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_emoticon),
            title: Text(S.of(context).tabUser),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
