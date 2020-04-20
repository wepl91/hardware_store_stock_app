import 'package:flutter/material.dart';

final _icons = <String, IconData> {
  'list'          : Icons.list,
  'assignment_ind': Icons.assignment_ind,
};
Icon getIconByString(String string) {
  return Icon(
    _icons[string], 
    color: Colors.grey[850],
  );
}