class Tag {
  String? title;
  Tag({
    this.title,
  });

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    return data;
  }
}
