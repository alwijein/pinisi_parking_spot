import 'package:connectivity/connectivity.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/screens/error_screen/no_connection/no_connection.dart';
import 'package:pinisi_parking_spot/screens/wrapper/wrapper.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pinisi Parking Spot',
        theme: getTheme(),
        home: StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged,
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.connectionState);
              if (snapshot.data == ConnectivityResult.none) {
                return NoConnection();
              } else {
                return Wrapper();
              }
            } else {
              return NoConnection();
            }
          },
        ),
      ),
    );
  }
}
