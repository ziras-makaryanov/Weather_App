class Weather{
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  int? pressure;
  double? feels_like;
  String? icon;
  String? description;
  String? primary;
  double? temp_max;
  double? temp_min;



  Weather({
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.pressure,
    this.feels_like,
    this.icon,
    this.description,
    this.primary,
    this.temp_max,
    this.temp_min,
  });

  Weather.fromJson(Map<String, dynamic> json){
    cityName = json["name"];
    temp = json["main"]["temp"];
    temp_max = json["main"]["temp_max"];
    temp_min = json["main"]["temp_min"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
    icon = json["weather"][0]["icon"];
    description = json["weather"][0]["description"];
    primary= json["weather"][0]["main"];

  }
}