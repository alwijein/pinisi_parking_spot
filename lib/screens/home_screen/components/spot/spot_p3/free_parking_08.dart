part of 'spot_p3.dart';

class FreeParking08 extends StatelessWidget {
  FreeParking08({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidht(10)),
      child: Column(
        children: [
          Row(
            children: [
              parkingBuilderVertical('69'),
              parkingBuilderVertical('70'),
              parkingBuilderVertical('71'),
            ],
          ),
          Row(
            children: [
              parkingBuilderVertical('72'),
              parkingBuilderVertical('73'),
              parkingBuilderVertical('74'),
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
              parkingBuilderVertical('75'),
              parkingBuilderVertical('76'),
              parkingBuilderVertical('77'),
            ],
          ),
        ],
      ),
    );
  }
}
