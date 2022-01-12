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
              parkingBuilderVertical('44'),
              parkingBuilderVertical('45'),
              parkingBuilderVertical('46'),
            ],
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('47'),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('48'),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          parkingBuilderHorizontal('49'),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
        ],
      ),
    );
  }
}
