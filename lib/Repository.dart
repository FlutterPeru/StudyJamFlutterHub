import 'dart:async';

import 'package:flutter/src/widgets/async.dart';

class Repository {
  // @TODO : Do something nice about this!! language should do null checking
  // Language
  Repository({
    this.id,
    this.name,
    this.description,
    this.stars,
    this.forks,
    this.language,
    this.full_name,
  });

  int id;
  String name;
  String description;
  int stars;
  int forks;
  String language;
  String full_name;
  factory Repository.fromJson(Map<String, dynamic> json){
    return Repository(
      id: json["id"],
      name: json["name"],
      full_name: json["full_name"],
      description: json["description"] ?? "",
      stars: json["stargazers_count"],
      forks: json["forks"],
      language: json["language"] ?? "",
    );
  }

  static List<Repository> createRepositoryList(List repositories) {
    List<Repository> listRepositories = new List();
    for(int i=0; i< repositories.length ; i++){
      listRepositories.add(Repository.fromJson(repositories[i]));
    }
    return listRepositories;
  }

}
