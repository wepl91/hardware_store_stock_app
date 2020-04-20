import 'package:flutter/material.dart';
import 'package:hardware_stock_store_app/src/pages/home_page.dart';
import 'package:hardware_stock_store_app/src/pages/products_page.dart';
import 'package:hardware_stock_store_app/src/pages/providers_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder> {
    '/'             : (BuildContext context) => HomePage(),
    'products_list' : (BuildContext context) => ProductsPage(),
    'providers_list': (BuildContext context) => ProvidersPage(),
    };
}