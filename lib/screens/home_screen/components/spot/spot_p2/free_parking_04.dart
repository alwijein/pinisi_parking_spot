part of 'spot_p2.dart';

class FreeParking04 extends StatelessWidget {
  FreeParking04({Key? key}) : super(key: key);

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
                parkingBuilderVertical('44', userRole),
                parkingBuilderVertical('45', userRole),
                parkingBuilderVertical('46', userRole),
              ],
            ),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            parkingBuilderHorizontal('47', userRole),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            parkingBuilderHorizontal('48', userRole),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            parkingBuilderHorizontal('49', userRole),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
          ],
        ),
      );
    });
  }
}
