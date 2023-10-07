class CategoryModel {
  String? name;
  int? id;
  CategoryModel({required this.id, required this.name});

  CategoryModel.fromjson({required Map<String, dynamic> json}) {
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'id': id};
  }
}
