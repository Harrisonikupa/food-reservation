import 'package:food_reservation/shared/models/user-model.dart';

class Post {
  String? id;
  String? text;
  String? image;
  int? likes;
  String? link;
  List<String>? tags;
  String? publishDate;
  final User? owner;

  Post({
    this.id,
    this.text,
    this.image,
    this.link,
    this.likes,
    this.tags,
    this.publishDate,
    this.owner,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json['id'],
        text: json['text'],
        image: json['image'],
        likes: json['likes'],
        link: json['link'],
        tags: List<String>.from(json["tags"].map((x) => x)),
        publishDate: json['publishDate'],
        owner: User.fromJson(json['owner']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['text'] = this.text;
    data['image'] = this.image;
    data['likes'] = this.likes;
    data['link'] = this.link;
    data['tags'] = this.tags;
    data['publishDate'] = this.publishDate;
    data['owner'] = this.owner;
    return data;
  }
}
