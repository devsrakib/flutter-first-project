import 'package:appone/Data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Recieve extends StatelessWidget{
  // final String data;
  // const Recieve({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Text('Received data:${providerData.value}'),
      ),
    );
  }
}