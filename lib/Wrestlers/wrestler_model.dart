// ignore: camel_case_types
class wrestler_model {
  String? name;
  String? image;

  wrestler_model({this.name, this.image});

  wrestler_model.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}
