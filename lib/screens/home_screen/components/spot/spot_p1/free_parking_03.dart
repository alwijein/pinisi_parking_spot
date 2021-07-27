part of 'spot_p1.dart';

class FreeParking03 extends StatelessWidget {
  FreeParking03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            parkingBuilderVertical('p28'),
            parkingBuilderVertical('p29'),
            parkingBuilderVertical('p30'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('p31'),
            parkingBuilderVertical('p32'),
            parkingBuilderVertical('p34'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('p35'),
            parkingBuilderVertical('p36'),
            parkingBuilderVertical('p37'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('p38'),
            parkingBuilderVertical('p39'),
            parkingBuilderVertical('p40'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('p41'),
            parkingBuilderVertical('p42'),
            parkingBuilderVertical('p43'),
            parkingBuilderVertical('p43'),
          ],
        ),
      ],
    );
  }
}
