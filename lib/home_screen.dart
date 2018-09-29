import 'package:flutter/material.dart';
import 'package:flutterhub/followers_screen.dart';
import 'package:flutterhub/following_screen.dart';
import 'package:flutterhub/login_screen.dart';
import 'package:flutterhub/repository_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("FlutterHub"),
          bottom: TabBar(
            tabs: [
              Tab(child: Text("Repositories")),
              Tab(child: Text("Followers")),
              Tab(child: Text("Following")),
            ],
          ),
        ),
        drawer: Drawer(),
        body: TabBarView(children: [
          RepositoryScreen(),
          FollowersScreen(),
          FollowingScreen(),
        ]),
      ),
    );
  }
}


