import 'package:flutter/material.dart';

class UsersViews extends StatefulWidget {
  const UsersViews({super.key});

  @override
  State<UsersViews> createState() => _UsersViewsState();
}

class _UsersViewsState extends State<UsersViews> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Utilisateur"),
    );
  }
}
