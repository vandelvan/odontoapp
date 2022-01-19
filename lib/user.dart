class User {
  String username = "";
  String pass = "";
  String pic = "";
  bool favc = false;
  bool favv = false;
  User(this.username, this.pass, this.pic, this.favc, this.favv);

  User.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        pass = json['pass'],
        pic = json['pic'],
        favc = json['favc'],
        favv = json['favv'];
}
