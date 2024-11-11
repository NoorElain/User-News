class UserModel
{
  List users;
  UserModel({required this.users});

  factory UserModel.fromjson(Map<String, dynamic> json)
  {
    List<dynamic> fullData;
    fullData = json["results"].map(
        (user) {
          return{
            "name" : user["name"]["first"] + " " + user["name"]["last"],
            "email" : user["email"],
            "img" : user["picture"]["thumbnail"]
          };
        }
    ).toList();
    return UserModel(users: fullData);
  }
}