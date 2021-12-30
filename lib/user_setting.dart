import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSetting extends StatefulWidget {
  const UserSetting({Key? key}) : super(key: key);

  @override
  _UserSettingState createState() => _UserSettingState();
}

class _UserSettingState extends State<UserSetting> {
  var lat = 5;
  int? Value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Shared Preferences : ${Value}"),
          ElevatedButton(
              onPressed: () {
                store(lat);
              },
              child: Text("Set Data")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  getdata();
                });
              },
              child: Text("Get Data")),
        ],
      ),
    );
  }

  void store(int lat) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('key', lat);
  }

  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    Value = prefs.getInt('key');
    print(Value);
    return Value;
  }
}
