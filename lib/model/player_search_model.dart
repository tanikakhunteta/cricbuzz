class PlayerSearchModel {
  String? images;
  String? title;
  String? subTitle;

  PlayerSearchModel({this.images, this.title, this.subTitle});

  PlayerSearchModel.fromJson(Map<String, dynamic> json) {
    images = json['images'];
    title = json['title'];
    subTitle=json['subtitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['images'] = this.images;
    data['title'] = this.title;
    data['subtitle']=this.subTitle;
    return data;
  }
}