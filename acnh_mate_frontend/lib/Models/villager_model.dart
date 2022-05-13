import 'catch_translations.dart';
import 'name.dart';

class Villager {
  String? personality;
  String? birthdayString;
  String? birthday;
  String? species;
  String? gender;
  String? subtype;
  String? hobby;
  String? catchPhrase;
  String? iconUri;
  String? imageUri;
  String? bubbleColor;
  String? textColor;
  String? saying;
  CatchTranslations? catchTranslations;
  String? sId;
  int? id;
  Name? name;
  String? fileName;

  Villager(
      {this.personality,
        this.birthdayString,
        this.birthday,
        this.species,
        this.gender,
        this.subtype,
        this.hobby,
        this.catchPhrase,
        this.iconUri,
        this.imageUri,
        this.bubbleColor,
        this.textColor,
        this.saying,
        this.catchTranslations,
        this.sId,
        this.id,
        this.name,
        this.fileName});

  Villager.fromJson(Map<String, dynamic> json) {
    personality = json['personality'];
    birthdayString = json['birthdayString'];
    birthday = json['birthday'];
    species = json['species'];
    gender = json['gender'];
    subtype = json['subtype'];
    hobby = json['hobby'];
    catchPhrase = json['catchPhrase'];
    iconUri = json['iconUri'];
    imageUri = json['imageUri'];
    bubbleColor = json['bubbleColor'];
    textColor = json['textColor'];
    saying = json['saying'];
    catchTranslations = json['catchTranslations'] != null
        ? new CatchTranslations.fromJson(json['catchTranslations'])
        : null;
    sId = json['_Id'];
    id = json['id'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    fileName = json['fileName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['personality'] = this.personality;
    data['birthdayString'] = this.birthdayString;
    data['birthday'] = this.birthday;
    data['species'] = this.species;
    data['gender'] = this.gender;
    data['subtype'] = this.subtype;
    data['hobby'] = this.hobby;
    data['catchPhrase'] = this.catchPhrase;
    data['iconUri'] = this.iconUri;
    data['imageUri'] = this.imageUri;
    data['bubbleColor'] = this.bubbleColor;
    data['textColor'] = this.textColor;
    data['saying'] = this.saying;
    if (this.catchTranslations != null) {
      data['catchTranslations'] = this.catchTranslations!.toJson();
    }
    data['_Id'] = this.sId;
    data['id'] = this.id;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['fileName'] = this.fileName;
    return data;
  }
}