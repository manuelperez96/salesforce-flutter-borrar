import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
  factory Image({
    required String alt,
    required String disBaseLink,
    required String link,
    required String title,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) =>
      _$ImageFromJson(json);
}
