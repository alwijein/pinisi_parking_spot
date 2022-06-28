import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/user_bloc/user_bloc.dart';
import '../../../../utils/utils.dart';

class HorizontalParking extends StatelessWidget {
  final List<String> list;

  const HorizontalParking(this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
      String userRole = userState is UserLoaded ? userState.users.role : "user";
      if (userState is UserLoaded) {
        print("users => ${userState.users}");
      }
      return Row(
        children: list.map((e) => parkingBuilderVertical(e, userRole)).toList(),
      );
    });
  }
}