part of 'spot_p2.dart';

class FreeParking01 extends StatelessWidget {
  FreeParking01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidht(10)),
      child: Row(
        children: [
          parkingBuilderVertical('p44'),
          parkingBuilderVertical('p45'),
          parkingBuilderVertical('p46'),
        ],
      ),
    );
  }
}
