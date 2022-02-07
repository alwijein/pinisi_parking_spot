part of 'spot_p3.dart';

class FreeParking08 extends StatelessWidget {
  FreeParking08({Key? key}) : super(key: key);

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
                parkingBuilderVertical('74', userRole),
                parkingBuilderVertical('75', userRole),
                parkingBuilderVertical('76', userRole),
              ],
            ),
            Row(
              children: [
                parkingBuilderVertical('77', userRole),
                parkingBuilderVertical('78', userRole),
                parkingBuilderVertical('79', userRole),
              ],
            ),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            Row(
              children: [
                parkingBuilderVertical('80', userRole),
                parkingBuilderVertical('81', userRole),
                parkingBuilderVertical('82', userRole),
              ],
            ),
          ],
        ),
      );
    });
  }
}
