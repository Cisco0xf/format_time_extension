extension TimeForamt on String {
  String get formatPrayerTime {
    final List<String> timeParts = split(":");

    final String hourPart = timeParts.first;
    final String minutePart = timeParts[1];

    // Format Hour

    final int hour = int.parse(hourPart);

    String formatedHour = "";

    if (hour >= 1 && hour <= 12) {
      //

      if (hour >= 10 && hour <= 12) {
        formatedHour = "$hour";
      } else {
        formatedHour = "0$hour";
      }
    } else if (hour > 12) {
      int subHour = hour - 12;

      if (subHour >= 10 && subHour <= 12) {
        formatedHour = "$subHour";
      } else {
        formatedHour = "0$subHour";
      }
    } else if (hour == 0) {
      formatedHour = "12";
    } else {
      formatedHour = "NULL";
    }

    // Format Period

    String period = "";

    if (hour >= 0 && hour < 12) {
      period = "AM";
    } else {
      period = "PM";
    }

    // Join parts

    final String target = "$formatedHour:$minutePart $period";

    return target;
  }
}
