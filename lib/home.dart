import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:mkcl/data_get.dart';

Future<Data_get> fetchData() async {
  final response =
      await http.get(Uri.parse('http://localhost:3000/api/v1/auth'));
  if (response.statusCode == 200) {
    return Data_get.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('failed to load');
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  late Future<Data_get> f_data;

  void initState() {
    super.initState();
    f_data = fetchData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Test'),
      ),
      body: Center(
        child: FutureBuilder<Data_get>(
          future: f_data,
          // initialData: InitialData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data!.type),
                  Text(snapshot.data!.name),
                  Text(snapshot.data!.mail),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
