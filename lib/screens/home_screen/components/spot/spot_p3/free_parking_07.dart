part of 'spot_p3.dart';

class FreeParking07 extends StatelessWidget {
  FreeParking07({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidht(10)),
      child: Column(
        children: [
          Row(
            children: [
              parkingBuilderVertical('p13'),
              parkingBuilderVertical('p14'),
              parkingBuilderVertical('p15'),
            ],
          ),
          Row(
            children: [
              parkingBuilderVertical('p16'),
              parkingBuilderVertical('p17'),
              parkingBuilderVertical('p18'),
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
              parkingBuilderVertical('p25'),
              parkingBuilderVertical('p26'),
              parkingBuilderVertical('p27'),
            ],
          ),
        ],
      ),
    );
  }
}
