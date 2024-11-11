import 'package:all_projects/Models/user_model.dart';
import 'package:dio/dio.dart';

class UserService
{
  static Dio dio =Dio();
  static Future<UserModel> fetchUsers() async
  {
    String url = "https://randomuser.me/api/?results=50";
    var response = await dio.get(url);
    return UserModel.fromjson(response.data);
  }
}