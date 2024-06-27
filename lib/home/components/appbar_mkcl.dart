import 'package:flutter/material.dart';

class AppBar_mkcl extends StatefulWidget {
  const AppBar_mkcl({super.key});

  @override
  State<AppBar_mkcl> createState() => _AppBar_mkclState();
}

class _AppBar_mkclState extends State<AppBar_mkcl> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('hello'),
              expandedHeight: 100,
              toolbarHeight: 100,
              // collapsedHeight: 50,
              flexibleSpace: Column(
                children: [Text('hello')],
              ),
              bottom: TabBar(tabs: [
                Tab(
                  child: Text('hello'),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
