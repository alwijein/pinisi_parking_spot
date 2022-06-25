part of 'utils.dart';

FutureBuilder showSelectDialog() {
  return FutureBuilder<List<Users>>(
      future: UserServices.getUsers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          int index = snapshot.data!.length;
          return ParkingBoxHorizontal(value: GestureDetector(onTap: () {
            SelectDialog.showModal(
              context,
              label: 'User Yang Parkir Sekarang',
              selectedValue: 'novalue',
              loadingBuilder: (context) => CircularProgressIndicator(),
              items: List.generate(
                index,
                (index) {
                  Users users = snapshot.data![index];

                  return "Email: ${users.email} \nStatus: ${users.status}\n";
                },
              ),
              showSearchBox: false,
            );
          }));
        } else {
          return Text('');
        }
      });
}
