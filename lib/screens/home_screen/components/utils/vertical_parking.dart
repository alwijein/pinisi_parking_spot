import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/user_bloc/user_bloc.dart';
import '../../../../utils/utils.dart';

class VerticalParking extends StatelessWidget {
  final List<String> list;

  const VerticalParking(this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
      String userRole = userState is UserLoaded ? userState.users.role : "user";
      return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:
              list.map((e) => parkingBuilderHorizontal(e, userRole)).toList());
    });
  }
}
