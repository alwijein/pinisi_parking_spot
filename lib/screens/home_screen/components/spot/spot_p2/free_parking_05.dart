part of 'spot_p2.dart';

class FreeParking05 extends StatelessWidget {
  FreeParking05({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
      String userRole = userState is UserLoaded ? userState.users.role : "user";
      return Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getPropertionateScreenWidht(10)),
        child: Column(
          children: [
            Row(
              children: [
                parkingBuilderVertical('50', userRole),
                parkingBuilderVertical('51', userRole),
                parkingBuilderVertical('52', userRole),
              ],
            ),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            parkingBuilderHorizontal('53', userRole),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            parkingBuilderHorizontal('54', userRole),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            parkingBuilderHorizontal('55', userRole),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
          ],
        ),
      );
    });
  }
}
