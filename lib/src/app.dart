import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music_player/src/pages/home/view.dart';
import 'package:flutter_music_player/src/services/brighness.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    BrighnessService().initBrighness();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
