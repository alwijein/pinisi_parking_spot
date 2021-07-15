import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/screens/wrapper/wrapper.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: getTheme(),
        home: Wrapper(),
      ),
    );
  }
}
