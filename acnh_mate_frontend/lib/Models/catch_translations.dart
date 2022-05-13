class CatchTranslations {
  String? catchUSen;
  String? catchEUen;
  String? catchEUde;
  String? catchEUes;
  String? catchUSes;
  String? catchEUfr;
  String? catchUSfr;
  String? catchEUit;
  String? catchEUnl;
  String? catchCNzh;
  String? catchTWzh;
  String? catchJPja;
  String? catchKRko;
  String? catchEUru;

  CatchTranslations(
      {this.catchUSen,
        this.catchEUen,
        this.catchEUde,
        this.catchEUes,
        this.catchUSes,
        this.catchEUfr,
        this.catchUSfr,
        this.catchEUit,
        this.catchEUnl,
        this.catchCNzh,
        this.catchTWzh,
        this.catchJPja,
        this.catchKRko,
        this.catchEUru});

  CatchTranslations.fromJson(Map<String, dynamic> json) {
    catchUSen = json['catchUSen'];
    catchEUen = json['catchEUen'];
    catchEUde = json['catchEUde'];
    catchEUes = json['catchEUes'];
    catchUSes = json['catchUSes'];
    catchEUfr = json['catchEUfr'];
    catchUSfr = json['catchUSfr'];
    catchEUit = json['catchEUit'];
    catchEUnl = json['catchEUnl'];
    catchCNzh = json['catchCNzh'];
    catchTWzh = json['catchTWzh'];
    catchJPja = json['catchJPja'];
    catchKRko = json['catchKRko'];
    catchEUru = json['catchEUru'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catchUSen'] = this.catchUSen;
    data['catchEUen'] = this.catchEUen;
    data['catchEUde'] = this.catchEUde;
    data['catchEUes'] = this.catchEUes;
    data['catchUSes'] = this.catchUSes;
    data['catchEUfr'] = this.catchEUfr;
    data['catchUSfr'] = this.catchUSfr;
    data['catchEUit'] = this.catchEUit;
    data['catchEUnl'] = this.catchEUnl;
    data['catchCNzh'] = this.catchCNzh;
    data['catchTWzh'] = this.catchTWzh;
    data['catchJPja'] = this.catchJPja;
    data['catchKRko'] = this.catchKRko;
    data['catchEUru'] = this.catchEUru;
    return data;
  }
}