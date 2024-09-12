class Post {
  String? name;
  String? img_url;
  String? price;
  String? date;
  String? key;
  String location;
  String phone;
  String? img1;
  String? img2;
  String? img3;
  String? img4;

  Post({this.name, this.img_url, this.price, this.date,required this.location,required this.phone, this.img1,
   this.img2, this.img3, this.img4});

  Post.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        img_url = json['img_url'],
        price = json['price'],
        date = json['date'],
        key = json['key'],
        location = json['location'],
        phone = json ['phone'],
        img1 = json ['img1'],
        img2 = json ['img2'],
        img3 = json ['img3'],
        img4 = json ['img4'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'img_url': img_url,
    'price': price,
    'date': date,
    'key': key,
    'location' : location,
    'phone' : phone,
    'img1' : img1,
    'img2' : img2,
    'img3' : img3,
    'img4' : img4,
  };
}