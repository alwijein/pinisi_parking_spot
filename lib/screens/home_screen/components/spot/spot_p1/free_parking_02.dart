part of 'spot_p1.dart';

class FreeParking02 extends StatelessWidget {
  FreeParking02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(
          children: [
            parkingBuilderVertical('19'),
            parkingBuilderVertical('20'),
            parkingBuilderVertical('21'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('22'),
            parkingBuilderVertical('23'),
            parkingBuilderVertical('24'),
          ],
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
    );
  }
}
