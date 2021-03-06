part of 'spot_p3.dart';

class FreeParking09 extends StatelessWidget {
  FreeParking09({Key? key}) : super(key: key);

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
                parkingBuilderVertical('83', userRole),
                parkingBuilderVertical('84', userRole),
                parkingBuilderVertical('85', userRole),
              ],
            ),
            Row(
              children: [
                parkingBuilderVertical('86', userRole),
                parkingBuilderVertical('87', userRole),
                parkingBuilderVertical('88', userRole),
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
                parkingBuilderVertical('89', userRole),
                parkingBuilderVertical('90', userRole),
                parkingBuilderVertical('91', userRole),
              ],
            ),
          ],
        ),
      );
    });
  }
}
