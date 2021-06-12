import 'dart:convert';
import 'dart:core';
import 'dart:core';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{
  String location; // location name for the UI
  String time=''; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  bool isDaytime = true;  //true or false if daytime or not

  WorldTime({required this.location, required this.flag, required this.url});


 Future<void> getTime() async
  {
    try{
      //make the request 'http://worldtimeapi.org/api/timezone/Europe/London'

      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set the time property
     // time = now.toString();
      isDaytime = now.hour > 6 && now.hour <20 ? true : false;


      time = DateFormat.jm().format(now);
    }
    catch(e){
      print('Caught error: $e');
     // time = 'Could not get time data';
    }


  }

}


