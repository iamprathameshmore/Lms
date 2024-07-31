import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mkcl/home.dart';
import 'package:mkcl/themes/theme_provoider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          child: MyApp(),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      theme: Provider.of<ThemeProvider>(context).themeDataStyle,

      // themeMode: ThemeMode.,

      home: Home(),
    );
  }
}
