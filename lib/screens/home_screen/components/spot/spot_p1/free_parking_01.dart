part of 'spot_p1.dart';

class FreeParking01 extends StatelessWidget {
  const FreeParking01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        parkingBuilderHorizontal('1'),
        parkingBuilderHorizontal('2'),
        parkingBuilderHorizontal('3'),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        parkingBuilderHorizontal('4'),
        parkingBuilderHorizontal('5'),
        parkingBuilderHorizontal('6'),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        parkingBuilderHorizontal('7'),
        parkingBuilderHorizontal('8'),
        parkingBuilderHorizontal('9'),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        parkingBuilderHorizontal('10'),
        parkingBuilderHorizontal('11'),
        parkingBuilderHorizontal('12'),
      ],
    );
  }
}
