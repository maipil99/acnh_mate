import 'name.dart';

class Hourly {
  int? hour;
  String? weather;
  String? musicUri;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Hourly(
      {this.hour,
        this.weather,
        this.musicUri,
        this.sId,
        this.id,
        this.name,
        this.fileName});

  Hourly.fromJson(Map<String, dynamic> json) {
    hour = json['hour'];
    weather = json['weather'];
    musicUri = json['musicUri'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'];
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hour'] = this.hour;
    data['weather'] = this.weather;
    data['musicUri'] = this.musicUri;
    data['_Id'] = this.sId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['fileName'] = this.fileName;
    return data;
  }
}