import 'dart:convert';

class Profile{
  final String name, id, avatar;

  Profile(this.name, this.id, this.avatar);

}

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

class ProfileModel{
  ProfileModel({
    this.name,
    this.id,
    this.avatar,
  });

    String name;
    String id;
    String avatar;

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name:  json["name"],
        id: json["id"],
        avatar: json["avatar"],
    );

}
