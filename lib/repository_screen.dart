import 'package:flutter/material.dart';
import 'package:flutterhub/RepoWidget.dart';
import 'package:flutterhub/Repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class RepositoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Repository>>(
        future: fetchRepository(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    RepoWidget(
                      repository: snapshot.data[index],
                    ),
                    Divider()
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text(" :( ");
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}

// @TODO: Do it again until you make it right!!
const String url_repos =
    "https://api.github.com/user/repos?sort=name&access_token=058f4490d4d974b0a7ec29121e7839f129d7d50a";
Future<List<Repository>> fetchRepository() async {
  final response = await http.get(url_repos);
  if (response.statusCode == 200) {
    return Repository.createRepositoryList(json.decode(response.body));
  } else {
    throw Exception('Failed to load repository, Try again in 1000 years');
  }
}
