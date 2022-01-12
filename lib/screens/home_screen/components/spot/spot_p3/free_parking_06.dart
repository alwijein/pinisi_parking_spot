part of 'spot_p3.dart';

class FreeParking06 extends StatelessWidget {
  FreeParking06({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidht(10)),
      child: Column(
        children: [
          Row(
            children: [
              parkingBuilderVertical('13'),
              parkingBuilderVertical('14'),
              parkingBuilderVertical('15'),
            ],
          ),
          Row(
            children: [
              parkingBuilderVertical('16'),
              parkingBuilderVertical('17'),
              parkingBuilderVertical('18'),
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
              parkingBuilderVertical('25'),
              parkingBuilderVertical('26'),
              parkingBuilderVertical('27'),
            ],
          ),
        ],
      ),
    );
  }
}
