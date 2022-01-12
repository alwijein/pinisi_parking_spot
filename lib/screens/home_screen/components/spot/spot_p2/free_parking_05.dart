part of 'spot_p2.dart';

class FreeParking05 extends StatelessWidget {
  FreeParking05({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidht(10)),
      child: Column(
        children: [
          Row(
            children: [
              parkingBuilderVertical('50'),
              parkingBuilderVertical('51'),
              parkingBuilderVertical('52'),
            ],
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('53'),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('54'),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('55'),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
        ],
      ),
    );
  }
}
