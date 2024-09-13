import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class ImageBundle with _$ImageBundle {
  factory ImageBundle({
    required List<Image> images,
    required String viewType,
    @Default([]) List<VariationAttribute> variationAttributes,
  }) = _ImageBundle;

  factory ImageBundle.fromJson(Map<String, dynamic> json) {
    final images = _getImages(json);
    return ImageBundle(
      images: images,
      viewType: json['viewType'] as String,
      variationAttributes: _getVariationAttributes(json),
    );
  }

  const ImageBundle._();

  static List<Image> _getImages(Map<String, dynamic> json) {
    return (json['images'] as List)
        .cast<Map<String, dynamic>>()
        .map(Image.fromJson)
        .toList();
  }

  // The inner structure of this field, is a list. But, for now, we only take
  // the first element. It could change in the future, we need to review
  // project requirement
  static List<VariationAttribute> _getVariationAttributes(
    Map<String, dynamic> json,
  ) {
    final variationAttributeList = json['variationAttributes'] as List?;
    if (variationAttributeList == null || variationAttributeList.isNotEmpty) {
      return <VariationAttribute>[];
    }

    return variationAttributeList.cast<Map<String, dynamic>>().map(
      (variationAttribute) {
        final value = ((variationAttribute['values'] as List).first
            as Map<String, dynamic>)['value'] as String;
        return VariationAttribute(
          id: variationAttribute['id'] as String,
          value: value,
        );
      },
    ).toList();
  }
}

@freezed
class Image with _$Image {
  factory Image({
    @JsonKey(name: 'alt') required String alternativeText,
    required String disBaseLink,
    required String link,
    required String title,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class VariationAttribute with _$VariationAttribute {
  factory VariationAttribute({
    required String id,
    required String value,
  }) = _VariationAttribute;
}
