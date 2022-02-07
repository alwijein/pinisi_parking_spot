part of 'spot_p3.dart';

class FreeParking10 extends StatelessWidget {
  FreeParking10({Key? key}) : super(key: key);

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
                parkingBuilderVertical('92', userRole),
                parkingBuilderVertical('93', userRole),
                parkingBuilderVertical('94', userRole),
              ],
            ),
            Row(
              children: [
                parkingBuilderVertical('95', userRole),
                parkingBuilderVertical('96', userRole),
                parkingBuilderVertical('97', userRole),
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
                parkingBuilderVertical('98', userRole),
                parkingBuilderVertical('99', userRole),
                parkingBuilderVertical('100', userRole),
              ],
            ),
          ],
        ),
      );
    });
  }
}
