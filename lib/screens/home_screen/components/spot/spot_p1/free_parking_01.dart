part of 'spot_p1.dart';

class FreeParking01 extends StatelessWidget {
  const FreeParking01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
      String userRole = userState is UserLoaded ? userState.users.role : "user";
      return Column(
        children: [
          parkingBuilderHorizontal('1', userRole),
          parkingBuilderHorizontal('2', userRole),
          parkingBuilderHorizontal('3', userRole),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('4', userRole),
          parkingBuilderHorizontal('5', userRole),
          parkingBuilderHorizontal('6', userRole),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('7', userRole),
          parkingBuilderHorizontal('8', userRole),
          parkingBuilderHorizontal('9', userRole),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('10', userRole),
          parkingBuilderHorizontal('11', userRole),
          parkingBuilderHorizontal('12', userRole),
        ],
      );
    });
  }
}
