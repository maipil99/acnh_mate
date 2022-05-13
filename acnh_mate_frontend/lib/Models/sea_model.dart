import 'availability.dart';
import 'name.dart';

class Sea {
  Availability? availability;
  String? speed;
  String? shadow;
  int? price;
  String? catchPhrase;
  String? imageUri;
  String? iconUri;
  String? museumPhrase;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Sea(
      {this.availability,
        this.speed,
        this.shadow,
        this.price,
        this.catchPhrase,
        this.imageUri,
        this.iconUri,
        this.museumPhrase,
        this.sId,
        this.id,
        this.name,
        this.fileName});

  Sea.fromJson(Map<String, dynamic> json) {
    availability = json['availability'] != null
        ? new Availability.fromJson(json['availability'])
        : null;
    speed = json['speed'];
    shadow = json['shadow'];
    price = json['price'];
    catchPhrase = json['catchPhrase'];
    imageUri = json['imageUri'];
    iconUri = json['iconUri'];
    museumPhrase = json['museumPhrase'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.availability != null) {
      data['availability'] = this.availability!.toJson();
    }
    data['speed'] = this.speed;
    data['shadow'] = this.shadow;
    data['price'] = this.price;
    data['catchPhrase'] = this.catchPhrase;
    data['imageUri'] = this.imageUri;
    data['iconUri'] = this.iconUri;
    data['museumPhrase'] = this.museumPhrase;
    data['_Id'] = this.sId;
    data['id'] = this.id;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['fileName'] = this.fileName;
    return data;
  }
}