import 'package:flutter/material.dart';
import 'package:covid_19/pages/covid_page.dart';

void main() {
  runApp(CovidApp());
}

class CovidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CovidPage());
  }
}
