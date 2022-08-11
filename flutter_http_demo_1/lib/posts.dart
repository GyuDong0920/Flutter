class Posts {

  int userId;
  int id;
  String title;
  String body;

  Posts(this.userId, this.id, this.title, this.body);

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(json['userId'], json['id'], json['title'], json['body']);
  }

}