import 'name.dart';

class Fossil {
  int? price;
  String? museumPhrase;
  String? imageUri;
  String? partOf;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Fossil(
      {this.price,
        this.museumPhrase,
        this.imageUri,
        this.partOf,
        this.sId,
        this.id,
        this.name,
        this.fileName});

  Fossil.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    museumPhrase = json['museumPhrase'];
    imageUri = json['imageUri'];
    partOf = json['partOf'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['museumPhrase'] = this.museumPhrase;
    data['imageUri'] = this.imageUri;
    data['partOf'] = this.partOf;
    data['_Id'] = this.sId;
    data['id'] = this.id;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['fileName'] = this.fileName;
    return data;
  }
}