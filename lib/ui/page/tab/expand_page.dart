import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_arch/config/resource_mananger.dart';
import 'package:flutter_arch/ui/widget/custom_expansion.dart';
import 'package:flutter_arch/ui/widget/image.dart';
import 'package:flutter_arch/utils/status_bar_utils.dart';

class ExpandPage extends StatefulWidget {
  @override
  _ExpandWidget createState() => _ExpandWidget();
}

class _ExpandWidget extends State<ExpandPage> {
  final list = List.generate(10, (index) => "这是第$index个数据");
  final Map<int, bool> map = {};

  @override
  Widget build(BuildContext context) {
    for (var value1 in list) {
      if (list.indexOf(value1) == 0) {
        map[list.indexOf(value1)] = true;
      } else {
        map[list.indexOf(value1)] = false;
      }
    }
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: StatusBarUtils.systemUiOverlayStyle(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('expansion tile demo'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return CustomExpansionTile(
              initiallyExpanded: map[index],
              key: new PageStorageKey(index),
                // trailing: Container(child: map[index] ? Icon(Icons.map) : Icon(Icons.ac_unit)),
                title: Container(
                    child: Text(
                  "$index个"),
                ),
                // onExpansionChanged: (bool expanding) => setState(() => map[index] = expanding),
                children: list.map((e) => ListTile(title: Text(e))).toList());
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}
