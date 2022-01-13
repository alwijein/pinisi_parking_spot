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
                parkingBuilderVertical('51', userRole),
                parkingBuilderVertical('52', userRole),
                parkingBuilderVertical('53', userRole),
              ],
            ),
            Row(
              children: [
                parkingBuilderVertical('54', userRole),
                parkingBuilderVertical('55', userRole),
                parkingBuilderVertical('56', userRole),
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
                parkingBuilderVertical('57', userRole),
                parkingBuilderVertical('58', userRole),
                parkingBuilderVertical('59', userRole),
              ],
            ),
          ],
        ),
      );
    });
  }
}
