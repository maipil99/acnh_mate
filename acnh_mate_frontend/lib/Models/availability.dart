class Availability {
  String? monthNorthern;
  String? monthSouthern;
  String? time;
  bool? isAllDay;
  bool? isAllYear;
  String? location;
  String? rarity;
  List<int>? monthArrayNorthern;
  List<int>? monthArraySouthern;
  List<int>? timeArray;

  Availability(
      {this.monthNorthern,
        this.monthSouthern,
        this.time,
        this.isAllDay,
        this.isAllYear,
        this.location,
        this.rarity,
        this.monthArrayNorthern,
        this.monthArraySouthern,
        this.timeArray});

  Availability.fromJson(Map<String, dynamic> json) {
    monthNorthern = json['monthNorthern'];
    monthSouthern = json['monthSouthern'];
    time = json['time'];
    isAllDay = json['isAllDay'];
    isAllYear = json['isAllYear'];
    location = json['location'];
    rarity = json['rarity'];
    monthArrayNorthern = json['monthArrayNorthern'].cast<int>();
    monthArraySouthern = json['monthArraySouthern'].cast<int>();
    timeArray = json['timeArray'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['monthNorthern'] = this.monthNorthern;
    data['monthSouthern'] = this.monthSouthern;
    data['time'] = this.time;
    data['isAllDay'] = this.isAllDay;
    data['isAllYear'] = this.isAllYear;
    data['location'] = this.location;
    data['rarity'] = this.rarity;
    data['monthArrayNorthern'] = this.monthArrayNorthern;
    data['monthArraySouthern'] = this.monthArraySouthern;
    data['timeArray'] = this.timeArray;
    return data;
  }
}
