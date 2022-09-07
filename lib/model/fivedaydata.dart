class FiveDayDate {
  final String? dateTime;
  final int? temp;

  FiveDayDate({this.dateTime, this.temp});

  factory FiveDayDate.fromJson(dynamic json) {
    if (json == null) {
      return FiveDayDate();
    }

    var f = json['dt_txt'].split(' ')[0].split('-')[2];
    var l = json['dt_txt'].split(' ')[1].split(':')[0];
    var fandl = '$f-$l';
    return FiveDayDate(
      dateTime: '$fandl',
      temp: (double.parse(json['main']['temp'].toString()) - 273.15).round(),
    );
  }
}
