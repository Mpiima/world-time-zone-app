import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  late String location;  //location of name for the UI
  late  String time; //the time in that location
  late  String flag; //url to an asset flag icon
  late  String url; //location url for api endpoint
  late bool isDaytime; //day or night image

  WorldTime({ required this.location, required this.flag, required this.url });

  Future <void> getTime() async {
    try{
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);

// print(response.body);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    //print(datetime);
   // print(offset);

//create Datetime object
    DateTime now = DateTime.parse(datetime);
    // print(now);
    now = now.add(Duration(hours: int.parse(offset)));
    // time = now.toString();

      // set the time property
      isDaytime = now.hour > 6 && now.hour < 20 ? true:false;
      time = DateFormat.jm().format(now);
    //print(now);

    }catch(e){
     print('Caught Error: $e');
     time = 'Could not get time data: Check your Internet Connection';
    }
  }

}