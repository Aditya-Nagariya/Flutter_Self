import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey =   'b1fa3eabd8ec6b87765aac8d004f5a8f';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {


  double longitute;
  double latitude;
  dynamic Image;

  Future<dynamic>  getCityWeather(String cityName) async {
    NetworkHelper networkHelper = await NetworkHelper('$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData () ;
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
      Location location = new Location();

      await location.getCurrentLocation();
      latitude = location.latitude;
      longitute = location.longitude;
      print(latitude.toString() + " " + longitute.toString());

    NetworkHelper networkHelper = await new NetworkHelper('$openWeatherMapURL?lat=$latitude&lon=$longitute&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    print(weatherData);
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌞';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }
  dynamic getWeatherImage(int condition)  {
    print(condition.toString());
    if (condition >= 200 && condition <=232) {
      return Image =  'Thunderstorm_200-232.jpeg';
    } else if (condition >= 300 && condition <=321) {
      return Image = 'Drizzel_300-321.jpeg';
    } else if (condition >= 500 && condition <=531) {
      return Image =   'Rain_500-531.jpg';
    } else if (condition >= 600 && condition <=622) {
      return Image =   'Snow_600-622.jpeg';
    } else if (condition >= 701 && condition <=781) {
      return Image =   'Atmospher_701-781.jpeg';
    } else if (condition == 800) {
      return Image =   'Clear_800.jpg';
    } else if (condition >= 801 && condition <=804) {
      return Image =   'Clouds_800-804.jpeg';
    } else {
      return Image =   'location_background.jpeg';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
