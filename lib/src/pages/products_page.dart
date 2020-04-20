import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Productos'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('products').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return LinearProgressIndicator();
            return _buildList(context, snapshot.data.documents);
          },
      ),
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> documents) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: documents.map((doc) {
      return _renderCard(doc);
    }).toList());
  }

  Widget _renderCard(DocumentSnapshot doc) {
    return Card(
            elevation: 15.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.grey[850],),
                  title: new Text('Producto: ${doc['name']}'),
                  subtitle: new Text('Precio: \$${doc['price']}'),
                  trailing: FlatButton(
                      child: Text('Mas..'),
                      onPressed: () {},
                    ),
                ),
              ],
            )
            
        );
  }

  
}