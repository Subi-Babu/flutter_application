import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Date_Time(),
  ));
}

class Date_Time extends StatefulWidget{
  @override 
  _datetime createState() => _datetime();
}
class _datetime extends State<Date_Time>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Date time picker"),
      ),
      body :SizedBox(height: 150,
        child: DateTimePicker(
        type: DateTimePickerType.dateTimeSeparate,
        dateMask: 'd MMM, yyyy',
        initialValue: DateTime.now().toString(),
        firstDate: DateTime(1998),
        lastDate: DateTime(2100),
        icon: Icon(Icons.event),
        dateLabelText: 'Date',
        timeLabelText: "Hour",
        selectableDayPredicate: (date) {
          // Disable weekend days to select from the calendar
          if (date.weekday == 6 || date.weekday == 7) {
        return false;
          }
      
          return true;
        },
        onChanged: (val) => print(val),
        validator: (val) {
          print(val);
          return null;
        },
        onSaved: (val) => print(val),
      ),
      ),
 );
    
  }
}