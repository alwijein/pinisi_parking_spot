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
                parkingBuilderVertical('93', userRole),
                parkingBuilderVertical('94', userRole),
                parkingBuilderVertical('95', userRole),
              ],
            ),
            Row(
              children: [
                parkingBuilderVertical('96', userRole),
                parkingBuilderVertical('97', userRole),
                parkingBuilderVertical('98', userRole),
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
                parkingBuilderVertical('99', userRole),
                parkingBuilderVertical('100', userRole),
                parkingBuilderVertical('101', userRole),
              ],
            ),
          ],
        ),
      );
    });
  }
}
