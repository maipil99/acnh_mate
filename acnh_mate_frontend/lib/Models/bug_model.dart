import 'availability.dart';
import 'name.dart';

class Bug {
  Availability? availability;
  int? price;
  int? priceFlick;
  String? catchPhrase;
  List<String>? altCatchPhrase;
  String? museumPhrase;
  String? imageUri;
  String? iconUri;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Bug(
      {this.availability,
        this.price,
        this.priceFlick,
        this.catchPhrase,
        this.altCatchPhrase,
        this.museumPhrase,
        this.imageUri,
        this.iconUri,
        this.sId,
        this.id,
        this.name,
        this.fileName});

  Bug.fromJson(Map<String, dynamic> json) {
    availability = json['availability'] != null
        ? new Availability.fromJson(json['availability'])
        : null;
    price = json['price'];
    priceFlick = json['priceFlick'];
    catchPhrase = json['catchPhrase'];
    altCatchPhrase = json['altCatchPhrase'] == null ? null : altCatchPhrase = json['altCatchPhrase'].cast<String>();
    museumPhrase = json['museumPhrase'];
    imageUri = json['imageUri'];
    iconUri = json['iconUri'];
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
    data['price'] = this.price;
    data['priceFlick'] = this.priceFlick;
    data['catchPhrase'] = this.catchPhrase;
    data['altCatchPhrase'] = this.altCatchPhrase;
    data['museumPhrase'] = this.museumPhrase;
    data['imageUri'] = this.imageUri;
    data['iconUri'] = this.iconUri;
    data['_Id'] = this.sId;
    data['id'] = this.id;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['fileName'] = this.fileName;
    return data;
  }
}