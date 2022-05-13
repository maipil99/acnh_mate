import 'name.dart';

class Art {
  bool? hasFake;
  int? buyPrice;
  int? sellPrice;
  String? imageUri;
  String? museumDesc;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Art(
      {this.hasFake,
        this.buyPrice,
        this.sellPrice,
        this.imageUri,
        this.museumDesc,
        this.sId,
        this.id,
        this.name,
        this.fileName});

  Art.fromJson(Map<String, dynamic> json) {
    hasFake = json['hasFake'];
    buyPrice = json['buyPrice'];
    sellPrice = json['sellPrice'];
    imageUri = json['imageUri'];
    museumDesc = json['museumDesc'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hasFake'] = this.hasFake;
    data['buyPrice'] = this.buyPrice;
    data['sellPrice'] = this.sellPrice;
    data['imageUri'] = this.imageUri;
    data['museumDesc'] = this.museumDesc;
    data['_Id'] = this.sId;
    data['id'] = this.id;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['fileName'] = this.fileName;
    return data;
  }
}