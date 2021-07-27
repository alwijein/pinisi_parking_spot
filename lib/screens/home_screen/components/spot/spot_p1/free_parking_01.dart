part of 'spot_p1.dart';

class FreeParking01 extends StatelessWidget {
  const FreeParking01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        parkingBuilderHorizontal('p1'),
        parkingBuilderHorizontal('p2'),
        parkingBuilderHorizontal('p3'),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        parkingBuilderHorizontal('p4'),
        parkingBuilderHorizontal('p5'),
        parkingBuilderHorizontal('p6'),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        parkingBuilderHorizontal('p7'),
        parkingBuilderHorizontal('p8'),
        parkingBuilderHorizontal('p9'),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        parkingBuilderHorizontal('p10'),
        parkingBuilderHorizontal('p11'),
        parkingBuilderHorizontal('p12'),
      ],
    );
  }
}
