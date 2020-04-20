import 'package:flutter/material.dart';

class ProvidersPage extends StatefulWidget {
  @override
  _ProvidersPageState createState() => _ProvidersPageState();
}

class _ProvidersPageState extends State<ProvidersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Proveedores'),
      ),
    );
  }
}