import 'package:flutter/material.dart';
import 'package:hardware_stock_store_app/src/providers/menu_provider.dart';
import 'package:hardware_stock_store_app/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Hardware Store'),
      ),
      body: _renderList(),
    );
  }

  Widget _renderList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _renderItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _renderItems(List<dynamic> items, BuildContext context) {
    return items.map((item) {
      return ListTile(
        title: Text(item['text']),
        leading: getIconByString(item['icon']),
        trailing: getIconByString('keyboard_arrow_right'),
        onTap: () {
          Navigator.pushNamed(context, item['rute']);
        },
      );
    }).toList();
  }
}