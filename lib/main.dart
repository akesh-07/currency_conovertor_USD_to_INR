import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_conovertor/currency_converter.dart';
import 'package:money_conovertor/main.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext build) {
    return const MaterialApp(
      home: currencyconverter(),
    );
  }
}


