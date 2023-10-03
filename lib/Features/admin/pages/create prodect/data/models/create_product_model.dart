class CreateProductModel {
  String? title;
  String? price;
  String? cate;
  String? des;
  String? img;
  CreateProductModel({
    required this.cate,
    required this.price,
    required this.title,
    required this.des,
    required this.img,
  });
  CreateProductModel.fromJson({required Map<String, dynamic> json}) {
    title = json['title'];
    price = json['price'];
    cate = json['cate'];
    des = json['des'];
    img = json['img'];
  }
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'cate': cate,
      'des': des,
      'img': img,
    };
  }
}
