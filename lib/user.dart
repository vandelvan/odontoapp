class User {
  String username = "";
  String pass = "";
  String pic = "";
  bool favc = false;
  bool favv = false;
  User(this.username, this.pass, this.pic, this.favc, this.favv);

  User.fromMap(Map<String, dynamic> res)
      : username = res["username"],
        pass = res["pass"],
        pic = res["pic"],
        favc = res["favc"] == 0 ? false : true,
        favv = res["favv"] == 0 ? false : true;

  Map<String, Object> toMap() {
    return {
      'username': username,
      'pass': pass,
      'pic': pic,
      'favc': favc,
      'favv': favv
    };
  }
}
