import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences? pref;
  static Future<SharedPreferences> get init async =>
      pref = await SharedPreferences.getInstance();

  //shared_preferences_demo

  static set setCounter(int data) => pref!.setInt('counter', data);

  static int get getCounter => pref!.getInt('counter') ?? 0;

  static set setName(String data) => pref!.setString('name', data);
  static get getName => pref!.getString('name') ?? '';

//chekbox_shared

  static set setCricket(bool data) => pref!.setBool('cricket', data);
  static get getCricket => pref!.getBool('cricket') ?? false;

  static set setFootBall(bool data) => pref!.setBool('football', data);
  static get getFootBall => pref!.getBool('football') ?? false;

  //text_field_shares_demo

  static set setFullName(List<String> data) =>
      pref!.setStringList('items', data);
  static List<String> get getFullName => pref!.getStringList('items') ?? [];

  static set setimage(String data) => pref!.setString('images', data);
  static String? get getimage => pref!.getString('images') ?? '';

  //all_text_chek_radio

  static set setiscricket(bool data) => pref!.setBool('iscricket', data);
  static get getiscricket => pref!.getBool('iscricket');

  static set setisfootball(bool data) => pref!.setBool('isfootball', data);
  static get getisfootball => pref!.getBool('isfootball');

  static set setfullnames(List<String> data) =>
      pref!.setStringList('fullimages', data);
  static get getfullnames => pref!.getStringList('fullimages') ?? [];

  static set setmale(bool data) => pref!.setBool('male', data);
  static get getmale => pref!.getBool('male') ?? false;

  static set setfemale(bool data) => pref!.setBool('female', data);
  static get getfemale => pref!.getBool('female') ?? false;

  static set setgender(bool data) => pref!.setBool('gender', data);
  static get getgender => pref!.getBool('gender') ?? false;

  static set setimages(String data) => pref!.setString('images', data);
  static get getimages => pref!.getString('images') ?? '';
}
