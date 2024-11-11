import 'package:all_projects/Providers/user_provider.dart';
import 'package:all_projects/Widgets/custom_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Users",style: TextStyle(color: Colors.white,fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Consumer(
        builder: (context,UserProvider value, child)
        {
          final randomUser = value.userData;
          if(randomUser == null)
          {
            value.getUsers();
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          else
          {
            return ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 20,),
              itemCount: randomUser.users.length,
              itemBuilder: (context, index) {
                return CustomUser(
                    img: randomUser.users[index]["img"],
                    email: randomUser.users[index]["email"],
                    name: randomUser.users[index]["name"]
                );
              },
            );
          }
        }
      ),
    );
  }
}
