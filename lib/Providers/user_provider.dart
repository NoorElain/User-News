import 'package:all_projects/Models/user_model.dart';
import 'package:all_projects/Services/user_service.dart';
import 'package:flutter/cupertino.dart';


class UserProvider extends ChangeNotifier
{
  UserModel? userData;
  getUsers () async
  {
    userData = await UserService.fetchUsers();
    notifyListeners();
  }
}