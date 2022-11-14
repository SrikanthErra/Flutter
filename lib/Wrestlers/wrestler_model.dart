// ignore: camel_case_types
class wrestler_model {
  String? name;
  String? image;
  String? age;
  String? userId;

  wrestler_model({this.name, this.image,this.age, this.userId});

  wrestler_model.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    age = json['age'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['age'] = this.age;
    data['userId'] = this.userId;
    return data;
  }
}
