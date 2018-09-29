import 'package:flutter/material.dart';
import 'package:flutterhub/Repository.dart';

class RepoWidget extends StatelessWidget {
  Repository repository;
  RepoWidget({this.repository});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(repository.full_name),
          Text(repository.description),
          Text(repository.language),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.star),
              Text(
                repository.stars.toString(),
              )
            ],
          )
        ],
      ),
    );
  }
}
