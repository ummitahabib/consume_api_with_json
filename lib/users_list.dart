import 'package:consume_json_placeholder/user.dart';
import 'package:consume_json_placeholder/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usersRepository = Provider.of<UsersRepository>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users List'),
      ),
      body: FutureBuilder<List<Users>>(
        future: usersRepository.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error fetching data'));
          } else {
            final users = snapshot.data ?? [];

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(users[index].firstName),
                );
              },
            );
          }
        },
      ),
    );
  }
}
