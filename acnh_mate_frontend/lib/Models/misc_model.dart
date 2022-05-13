import 'name.dart';

class Misc {
  int? buyPrice;
  int? sellPrice;
  bool? isOrderable;
  String? musicUri;
  String? imageUri;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Misc(
      {this.buyPrice,
        this.sellPrice,
        this.isOrderable,
        this.musicUri,
        this.imageUri,
        this.sId,
        this.id,
        this.name,
        this.fileName});

  Misc.fromJson(Map<String, dynamic> json) {
    buyPrice = json['buyPrice'];
    sellPrice = json['sellPrice'];
    isOrderable = json['isOrderable'];
    musicUri = json['musicUri'];
    imageUri = json['imageUri'];
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['buyPrice'] = this.buyPrice;
    data['sellPrice'] = this.sellPrice;
    data['isOrderable'] = this.isOrderable;
    data['musicUri'] = this.musicUri;
    data['imageUri'] = this.imageUri;
    data['_Id'] = this.sId;
    data['id'] = this.id;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['fileName'] = this.fileName;
    return data;
  }
}