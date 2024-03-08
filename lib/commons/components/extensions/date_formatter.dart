
extension DateFormatter on dynamic {
  String formatDate() {

      return"";

  }

  String formatAsYYYYMMdd() {

      return "";

  }

  int minutesAgo() {
    DateTime parseData;
    initializeDateFormatting();
    try {
      parseData = DateFormat("yyyy-MM-dd'T'HH:mm:ss").parse(this);
    } catch (e) {
      parseData = DateFormat("yyyy-MM-dd").parse(this);
    }
    return DateTime.now().difference(parseData).inMinutes;
  }
}
