class DetailsModel {
  DetailsModel({
      String? imageUrl, 
      String? title, 
      String? subTitle,}){
    _imageUrl = imageUrl;
    _title = title;
    _subTitle = subTitle;
}

  DetailsModel.fromJson(dynamic json) {
    _imageUrl = json['imageUrl'];
    _title = json['title'];
    _subTitle = json['subTitle'];
  }
  String? _imageUrl;
  String? _title;
  String? _subTitle;
DetailsModel copyWith({  String? imageUrl,
  String? title,
  String? subTitle,
}) => DetailsModel(  imageUrl: imageUrl ?? _imageUrl,
  title: title ?? _title,
  subTitle: subTitle ?? _subTitle,
);
  String? get imageUrl => _imageUrl;
  String? get title => _title;
  String? get subTitle => _subTitle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['imageUrl'] = _imageUrl;
    map['title'] = _title;
    map['subTitle'] = _subTitle;
    return map;
  }

}