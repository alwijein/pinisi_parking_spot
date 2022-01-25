part of 'spot_p3.dart';

class FreeParking06 extends StatelessWidget {
  FreeParking06({Key? key}) : super(key: key);

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
                parkingBuilderVertical('56', userRole),
                parkingBuilderVertical('57', userRole),
                parkingBuilderVertical('58', userRole),
              ],
            ),
            Row(
              children: [
                parkingBuilderVertical('59', userRole),
                parkingBuilderVertical('61', userRole),
                parkingBuilderVertical('62', userRole),
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
                parkingBuilderVertical('63', userRole),
                parkingBuilderVertical('64', userRole),
                parkingBuilderVertical('65', userRole),
              ],
            ),
          ],
        ),
      );
    });
  }
}
