part of 'spot_p1.dart';

class FreeParking02 extends StatelessWidget {
  FreeParking02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
      String userRole = userState is UserLoaded ? userState.users.role : "user";
      return Column(
        children: [
          Row(
            children: [
              parkingBuilderVertical('13', userRole),
              parkingBuilderVertical('14', userRole),
              parkingBuilderVertical('15', userRole),
            ],
          ),
          Row(
            children: [
              parkingBuilderVertical('16', userRole),
              parkingBuilderVertical('17', userRole),
              parkingBuilderVertical('18', userRole),
            ],
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          Row(
            children: [
              parkingBuilderVertical('19', userRole),
              parkingBuilderVertical('20', userRole),
              parkingBuilderVertical('21', userRole),
            ],
          ),
          Row(
            children: [
              parkingBuilderVertical('22', userRole),
              parkingBuilderVertical('23', userRole),
              parkingBuilderVertical('24', userRole),
            ],
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          Row(
            children: [
              parkingBuilderVertical('25', userRole),
              parkingBuilderVertical('26', userRole),
              parkingBuilderVertical('27', userRole),
            ],
          ),
        ],
      );
    });
  }
}
