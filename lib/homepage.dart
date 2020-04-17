import 'package:flutter/material.dart';
import 'package:http_provider/locator.dart';
import 'package:http_provider/user_provider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HTTP Provider'),
      ),
      body: ChangeNotifierProvider<UserProvider>(
        create: (context) => locator<UserProvider>(),
        child: Consumer<UserProvider>(
          builder: (context, userProvider, _) {
            return FutureBuilder(
              future: userProvider.fetchUsers(),
              builder: (context, snapshot) {
                // if (!snapshot.hasData) {
                //   return Center(child: CircularProgressIndicator());
                // }
                return ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    title: Text(userProvider.users[index].name),
                    subtitle: Text(userProvider.users[index].email),
                  ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: userProvider.users.length,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
