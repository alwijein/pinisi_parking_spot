part of 'spot_p1.dart';

class FreeParking03 extends StatelessWidget {
  FreeParking03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            parkingBuilderVertical('28'),
            parkingBuilderVertical('29'),
            parkingBuilderVertical('30'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('31'),
            parkingBuilderVertical('32'),
            parkingBuilderVertical('34'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('35'),
            parkingBuilderVertical('36'),
            parkingBuilderVertical('37'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('38'),
            parkingBuilderVertical('39'),
            parkingBuilderVertical('40'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('41'),
            parkingBuilderVertical('42'),
            parkingBuilderVertical('43'),
            parkingBuilderVertical('43'),
          ],
        ),
      ],
    );
  }
}
