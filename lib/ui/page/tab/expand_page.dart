import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_arch/config/resource_mananger.dart';
import 'package:flutter_arch/ui/widget/image.dart';
import 'package:flutter_arch/utils/status_bar_utils.dart';

class ExpandPage extends StatefulWidget {
  @override
  _ExpandWidget createState() => _ExpandWidget();
}

class _ExpandWidget extends State<ExpandPage> {
  final list = List.generate(10, (index) => "这是第$index个数据");
  var map = {0:false, 1:false, 2:false, 3:false, 4:false, 5:false, 6:false, 7:false, 8:false, 9:false};

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: StatusBarUtils.systemUiOverlayStyle(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('expansion tile demo'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Theme(
              data: ThemeData(
                primaryColor: Colors.black,
                accentColor: Colors.black
              ),
              child: ExpansionTile(
                  trailing: Container(child: map[index] ? Icon(Icons.map) : Icon(Icons.ac_unit)),
                  title: Container(
                      child: Text(
                    "$index个"),
                  ),
                  onExpansionChanged: (bool expanding) => setState(() => map[index] = expanding),
                  children: list.map((e) => ListTile(title: Text(e))).toList()),
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}
