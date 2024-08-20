class Post {
  String? name;
  String? img_url;
  String? price;
  String? date;
  String? key;
  String? location;

  Post({this.name, this.img_url, this.price, this.date,this.location});

  Post.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        img_url = json['img_url'],
        price = json['price'],
        date = json['date'],
        key = json['key'],
        location = json['location'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'img_url': img_url,
    'price': price,
    'date': date,
    'key': key,
    'location' : location,
  };
}