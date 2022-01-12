part of 'spot_p3.dart';

class FreeParking10 extends StatelessWidget {
  FreeParking10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidht(10)),
      child: Column(
        children: [
          Row(
            children: [
              parkingBuilderVertical('89'),
              parkingBuilderVertical('90'),
              parkingBuilderVertical('91'),
            ],
          ),
          Row(
            children: [
              parkingBuilderVertical('92'),
              parkingBuilderVertical('93'),
              parkingBuilderVertical('94'),
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
              parkingBuilderVertical('95'),
              parkingBuilderVertical('96'),
              parkingBuilderVertical('97'),
            ],
          ),
        ],
      ),
    );
  }
}
