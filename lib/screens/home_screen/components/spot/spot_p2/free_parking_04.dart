part of 'spot_p2.dart';

class FreeParking04 extends StatelessWidget {
  FreeParking04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getPropertionateScreenWidht(10)),
      child: Column(
        children: [
          Row(
            children: [
              parkingBuilderVertical('p44'),
              parkingBuilderVertical('p45'),
              parkingBuilderVertical('p46'),
            ],
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('p46'),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('p46'),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('p46'),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
        ],
      ),
    );
  }
}
