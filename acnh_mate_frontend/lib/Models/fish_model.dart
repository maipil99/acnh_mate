import 'Availability.dart';
import 'name.dart';

class Fish {
  Availability? availability;
  String? shadow;
  int? price;
  int? priceCj;
  String? catchPhrase;
  List<String>? altCatchPhrase;
  String? museumPhrase;
  String? imageUri;
  String? iconUri;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Fish({this.availability, this.shadow, this.price, this.priceCj, this.catchPhrase, this.altCatchPhrase, this.museumPhrase, this.imageUri, this.iconUri, this.sId, this.id, this.name, this.fileName});

  Fish.fromJson(Map<String, dynamic> json) {
    availability = json['availability'] != null ? new Availability.fromJson(json['availability']) : null;
    shadow = json['shadow'];
    price = json['price'];
    priceCj = json['priceCj'];
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
    data['shadow'] = this.shadow;
    data['price'] = this.price;
    data['priceCj'] = this.priceCj;
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