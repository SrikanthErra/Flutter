// ignore: camel_case_types
class wrestler_model {
  String? name;
  String? image;
  String? age;
  String? userId;
  int? id;
  wrestler_model({this.name, this.image, this.age, this.userId,this.id});
  wrestler_model.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    age = json['age'];
    userId = json['userId'];
    id = json['id'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['age'] = this.age;
    data['userId'] = this.userId;
    data['id'] = this.id;
    return data;
  }
}
