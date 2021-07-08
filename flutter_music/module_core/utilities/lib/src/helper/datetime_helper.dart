import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:utilities/src/common/logger.dart';

class DateTimeHelper {
  static int getCurrentMonth() {
    var now = new DateTime.now();
    var formatter = new DateFormat('MM');
    String formattedDate = formatter.format(now);
    return int.parse(formattedDate);
  }

  static int getCurrentYear() {
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy');
    String formattedDate = formatter.format(now);
    return int.parse(formattedDate);
  }

  static String parseMonth(String _date) {
    if (_date.isEmpty) {
      return "";
    } else {
      String fullDateTimeFormat = "MMMM";
      String originDateTimeFormat = "MM";
      String result = new DateFormat(fullDateTimeFormat).format(DateTime.parse(
          DateFormat(originDateTimeFormat).parse(_date).toString()));
      return result;
    }
  }

  static String parseNormalDate(String _date) {
    initializeDateFormatting('en_EN', null);
    if (_date.isEmpty) {
      return "";
    } else {
      String fullDateTimeFormat = "EEEE, dd MMMM yyyy";
      String originDateTimeFormat = "dd-MM-yyyyy";
      String result = new DateFormat(fullDateTimeFormat, "en_EN").format(
          DateTime.parse(
              DateFormat(originDateTimeFormat).parse(_date).toString()));
      return result;
    }
  }

  static String parseReverseDate(String _date) {
    initializeDateFormatting('en_EN', null);
    if (_date.isEmpty) {
      return "";
    } else {
      String fullDateTimeFormat = "EEEE, dd MMMM yyyy";
      String originDateTimeFormat = "yyyy-MM-dd";
      String result = new DateFormat(fullDateTimeFormat, "en_EN").format(
          DateTime.parse(
              DateFormat(originDateTimeFormat).parse(_date).toString()));
      return result;
    }
  }

  static DateTime parseHour(String _date) {
    initializeDateFormatting('en_EN', null);
    if (_date.isEmpty) {
      return DateTime.now();
    } else {
      String originDateTimeFormat = "HH:mm aa";
      DateTime date = DateTime.parse(
          DateFormat(originDateTimeFormat).parse(_date).toString());
      return date;
    }
  }

  static String fullDateTimeHoursFormat(String _dateTime) {
    if (_dateTime.isEmpty) {
      return "";
    } else {
      String fullDateTimeFormat = "EEEE, dd MMM yyyy, hh:mm";
      String result =
          new DateFormat(fullDateTimeFormat).format(DateTime.parse(_dateTime));
      return result;
    }
  }

  static String dateTimeHoursFormat(String _dateTime) {
    if (_dateTime.isEmpty) {
      return "";
    } else {
      String fullDateTimeFormat = "dd MMM yyyy, hh:mm";
      String result =
          new DateFormat(fullDateTimeFormat).format(DateTime.parse(_dateTime));
      return result;
    }
  }

  static String fullDateTimeFormat(String _dateTime) {
    initializeDateFormatting('en_EN', null);
    if (_dateTime.isEmpty) {
      return "";
    } else {
      String fullDateTimeFormat = "EEEE, dd MMMM yyyy";
      String result = new DateFormat(fullDateTimeFormat, "en_EN")
          .format(DateTime.parse(_dateTime));
      return result;
    }
  }

  static String fullDateFormat(String _dateTime) {
    initializeDateFormatting('en_EN', null);
    if (_dateTime.isEmpty) {
      return "";
    } else {
      String fullDateTimeFormat = "dd/MM/yyyy";
      String result = new DateFormat(fullDateTimeFormat, "en_EN")
          .format(DateTime.parse(_dateTime));
      return result;
    }
  }

  static String dayMonthFormat(String _dateTime) {
    if (_dateTime.isEmpty) {
      return "";
    } else {
      String fullDateTimeFormat = "EEEE, dd MMM";
      String result =
          new DateFormat(fullDateTimeFormat).format(DateTime.parse(_dateTime));
      return result;
    }
  }

  //region Start legacy code
  static DateTime getDateFromString(
    String date, {
    String pattern = "dd/MM/yyyy",
  }) {
    DateTime selectedDate;
    if (date.isEmpty) {
      selectedDate = DateTime.now();
    } else {
      selectedDate = new DateFormat(pattern).parse(date);
    }
    return selectedDate;
  }

  static String getDateFromDatePattern(String date,
      {String inputPattern = "dd/MM/yyyy",
      String outPattern = "dd MM yyyy",
      bool withSuffix = false}) {
    DateTime selectedDate;
    if (date.isEmpty) {
      selectedDate = DateTime.now();
    } else {
      selectedDate = new DateFormat(inputPattern).parse(date);
    }
    return DateFormat(outPattern).format(selectedDate);
  }

  static int getDiffBtwDays(DateTime dateTime1, DateTime dateTime2) {
    return dateTime1.difference(dateTime2).inDays;
  }

  static bool isPreviousDate(String date,
      {String inputPattern = "dd/MM/yyyy"}) {
    int selectedDate;
    if (date.isEmpty) {
      selectedDate = DateTime.now().millisecondsSinceEpoch;
    } else {

      selectedDate =
          new DateFormat(inputPattern).parse(date).millisecondsSinceEpoch;
    }

    int currentDate = DateTime.now().millisecondsSinceEpoch;

    Logger.debug("currnt date : ${DateTime.now().day}");
    if (currentDate > selectedDate) {
      return true;
    } else {
      return false;
    }
  }

  static DateTime parseDateStringToDateTime(String date) {
    try {
      return DateTime.parse(date);
    } catch (e) {
      return DateTime.now();
    }
  }

  static String getDateFromDateTime(DateTime date,
      {String pattern = "dd MMM yyyy"}) {
    var formatter = new DateFormat(pattern);
    return formatter.format(date);
  }

  static String getDateFromTimeStamp(int time,
      {String pattern = "dd MMM yyyy"}) {
    var date = new DateTime.fromMillisecondsSinceEpoch(time * 1000);

    var formatter = new DateFormat(pattern);
    return formatter.format(date);
  }

  static String getPlurals(int count, String singular, String plurals) {
    if (count == 1) {
      return singular;
    } else {
      return plurals;
    }
  }

  static String getTimeOnly(int time, {String pattern = "hh:mm"}) {
    var date = new DateTime.fromMillisecondsSinceEpoch(time * 1000);
    var formatter = new DateFormat(pattern);
    return formatter.format(date);
  }

  static String getDateSuffix(int i) {
    var j = i % 10, k = i % 100;
    if (j == 1 && k != 11) {
      return "'st'";
    }
    if (j == 2 && k != 12) {
      return "'nd'";
    }
    if (j == 3 && k != 13) {
      return "'rd'";
    }
    return "'th'";
  }

  //endregion

  static const String REGULAR_DATE_FORMAT = "dd MMM, yyyy";
  static const String REGULAR_TIME_FORMAT = "hh:mm";

  static DateTime getTodayOnLastFourYear() {
    return DateFormat("yyyy-MM-dd").parse(
        DateFormat("yyy-MM-dd").format(DateTime(DateTime.now().year - 4)));
  }

  static DateTime getToday() {
    return DateFormat("yyyy-MM-dd")
        .parse(DateFormat("yyy-MM-dd").format(DateTime.now()));
  }

  static String getDifference(String date) {
    final now = getToday().year;
    final birthYear = parseDateStringToDateTime(date).year;
    final difference = now - birthYear;
    return difference < 0 ? 0 : difference.toString();
  }
}
