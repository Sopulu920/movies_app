// String rate_format(rate_number) {
//   int? number;
//   number = int.tryParse(rate_number);
//   return number != null ? number.toStringAsFixed(2) : "0";
// }

String rate_format(double rate_number) {
  // int? number;
  // number = int.tryParse(rate_number);
  // number=rate_number;
  return rate_number.toStringAsFixed(2);
}

String date_format(String release_date) {
  DateTime date = DateTime.parse(release_date);
  List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  String day = date.day.toString().padLeft(2,'0');
  String month = months[date.month - 1];
  int year = date.year;

  return '$day $month $year';
}
