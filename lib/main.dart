import 'package:flutter/material.dart';

import 'ResultPage.dart';

void main() =>   runApp(new MaterialApp(

  debugShowCheckedModeBanner: false,
  home: new ResultPage(),
  routes: <String, WidgetBuilder>{

    '/ResultPage': (BuildContext context) => new ResultPage(),




  },
));