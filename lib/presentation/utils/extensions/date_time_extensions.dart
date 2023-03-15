import 'package:intl/intl.dart';

class DateTimeUtils {

  static String format(DateTime dateTime){

    var dateFormat = DateFormat("dd-MM-yyyy",'en');
    return dateFormat.format(dateTime);
  }
}