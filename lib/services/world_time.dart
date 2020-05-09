import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String url;
  String time;
  String flag;

  WorldTime({this.location, this.flag, this.url});


  Future<void> getTime() async {
   try {
     Response response = await get('http://worldtimeapi.org/api/timezone/$url');
     Map data = jsonDecode(response.body);

     String offset = data['utc_offset'].substring(1,3);
     String dateTime = data['datetime'];

     DateTime currentTime = DateTime.parse(dateTime);
     currentTime = currentTime.add(Duration(hours: int.parse(offset)));

     // use this DateFormat.jm().format(String) inbuilt function to convert the date format.
     time = DateFormat.jm().format(currentTime);
   } catch(err) {
     print(err);
     time = 'An error occured';
   }
  }
}