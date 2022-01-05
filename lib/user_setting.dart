import 'package:checkin_project/authentication.dart';
import 'package:checkin_project/user_home.dart';
import 'package:flutter/material.dart';

class UserSetting extends StatefulWidget {
  const UserSetting({Key? key}) : super(key: key);

  @override
  _UserSettingState createState() => _UserSettingState();
}

class _UserSettingState extends State<UserSetting> {
  // // Initial Selected Value
  // String dropdownvalue = '10';

  // // List of items in our dropdown menu
  // var items = [
  //   '10',
  //   '100',
  //   '300',
  //   '500',
  //   '1000',
  // ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Stored latitude: ${latitude}"),
            SizedBox(height: 10),
            Text("Stored longitude: ${longitude}"),
            SizedBox(height: 10),
            Text("Current latitude: ${current_latitude}"),
            SizedBox(height: 10),
            Text("Current longitude: ${current_longitude}"),
            SizedBox(height: 10),
            Text("Distance: ${distancebetween}"),
            SizedBox(height: 10),
            Text("Required Range: 0.00310686"),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Range",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                // DropdownButton(
                //   // Initial Value
                //   value: dropdownvalue,

                //   // Down Arrow Icon
                //   icon: const Icon(Icons.keyboard_arrow_down),

                //   // Array list of items
                //   items: items.map((String items) {
                //     return DropdownMenuItem(
                //       value: items,
                //       child: Text(items),
                //     );
                //   }).toList(),
                //   // After selecting the desired option,it will
                //   // change button value to selected value
                //   onChanged: (String? newValue) {
                //     setState(() {
                //       dropdownvalue = newValue!;
                //     });
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
