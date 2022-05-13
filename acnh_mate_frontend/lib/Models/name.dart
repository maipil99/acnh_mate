class Name {
  String? nameUSen;
  String? nameEUen;
  String? nameEUde;
  String? nameEUes;
  String? nameUSes;
  String? nameEUfr;
  String? nameUSfr;
  String? nameEUit;
  String? nameEUnl;
  String? nameCNzh;
  String? nameTWzh;
  String? nameJPja;
  String? nameKRko;
  String? nameEUru;

  Name(
      {this.nameUSen,
        this.nameEUen,
        this.nameEUde,
        this.nameEUes,
        this.nameUSes,
        this.nameEUfr,
        this.nameUSfr,
        this.nameEUit,
        this.nameEUnl,
        this.nameCNzh,
        this.nameTWzh,
        this.nameJPja,
        this.nameKRko,
        this.nameEUru});

  Name.fromJson(Map<String, dynamic> json) {
    nameUSen = json['nameUSen'];
    nameEUen = json['nameEUen'];
    nameEUde = json['nameEUde'];
    nameEUes = json['nameEUes'];
    nameUSes = json['nameUSes'];
    nameEUfr = json['nameEUfr'];
    nameUSfr = json['nameUSfr'];
    nameEUit = json['nameEUit'];
    nameEUnl = json['nameEUnl'];
    nameCNzh = json['nameCNzh'];
    nameTWzh = json['nameTWzh'];
    nameJPja = json['nameJPja'];
    nameKRko = json['nameKRko'];
    nameEUru = json['nameEUru'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nameUSen'] = this.nameUSen;
    data['nameEUen'] = this.nameEUen;
    data['nameEUde'] = this.nameEUde;
    data['nameEUes'] = this.nameEUes;
    data['nameUSes'] = this.nameUSes;
    data['nameEUfr'] = this.nameEUfr;
    data['nameUSfr'] = this.nameUSfr;
    data['nameEUit'] = this.nameEUit;
    data['nameEUnl'] = this.nameEUnl;
    data['nameCNzh'] = this.nameCNzh;
    data['nameTWzh'] = this.nameTWzh;
    data['nameJPja'] = this.nameJPja;
    data['nameKRko'] = this.nameKRko;
    data['nameEUru'] = this.nameEUru;
    return data;
  }
}