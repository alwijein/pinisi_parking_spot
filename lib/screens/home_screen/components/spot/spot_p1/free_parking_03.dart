part of 'spot_p1.dart';

class FreeParking03 extends StatelessWidget {
  FreeParking03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
      String userRole = userState is UserLoaded ? userState.users.role : "user";
      return Column(
        children: [
          Row(
            children: [
              parkingBuilderVertical('28', userRole),
              parkingBuilderVertical('29', userRole),
              parkingBuilderVertical('30', userRole),
            ],
          ),
          Row(
            children: [
              parkingBuilderVertical('31', userRole),
              parkingBuilderVertical('32', userRole),
              parkingBuilderVertical('33', userRole),
            ],
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          Row(
            children: [
              parkingBuilderVertical('34', userRole),
              parkingBuilderVertical('35', userRole),
              parkingBuilderVertical('36', userRole),
            ],
          ),
          Row(
            children: [
              parkingBuilderVertical('37', userRole),
              parkingBuilderVertical('38', userRole),
              parkingBuilderVertical('39', userRole),
            ],
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          Row(
            children: [
              parkingBuilderVertical('40', userRole),
              parkingBuilderVertical('41', userRole),
              parkingBuilderVertical('42', userRole),
              parkingBuilderVertical('43', userRole),
            ],
          ),
        ],
      );
    });
  }
}
