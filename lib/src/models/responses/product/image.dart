import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

/// {@template image_bundle}
/// Represents a bundle of images with associated view type and variation attributes.
///
/// This class includes various fields that describe the image bundle, including
/// the list of images, view type, and variation attributes.
///
/// - `images`: The list of images in the bundle.
/// - `viewType`: The view type associated with the image bundle.
/// - `variationAttributes`: The list of variation attributes associated with the image bundle.
/// {@endtemplate}
@freezed
class ImageBundle with _$ImageBundle {
  /// {@macro image_bundle}
  factory ImageBundle({
    required List<Image> images,
    required String viewType,
    @Default([]) List<VariationAttribute> variationAttributes,
  }) = _ImageBundle;

  /// Creates an instance of [ImageBundle] from a JSON object.
  factory ImageBundle.fromJson(Map<String, dynamic> json) {
    final images = _getImages(json);
    return ImageBundle(
      images: images,
      viewType: json['viewType'] as String,
      variationAttributes: _getVariationAttributes(json),
    );
  }

  const ImageBundle._();

  /// Extracts the list of images from a JSON object.
  ///
  /// - `json`: The JSON object to extract images from.
  static List<Image> _getImages(Map<String, dynamic> json) {
    return (json['images'] as List)
        .cast<Map<String, dynamic>>()
        .map(Image.fromJson)
        .toList();
  }

  /// Extracts the list of variation attributes from a JSON object.
  ///
  /// - `json`: The JSON object to extract variation attributes from.
  ///
  /// Returns an empty list if the variation attributes are not present or empty.
  static List<VariationAttribute> _getVariationAttributes(
    Map<String, dynamic> json,
  ) {
    // The inner structure of this field, is a list. But, for now, we only take
    // the first element. It could change in the future, we need to review
    // project requirements.
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

/// {@template image}
/// Represents an image with associated metadata.
///
/// This class includes various fields that describe the image, including
/// its alternative text, base link, link, and title.
///
/// - `alternativeText`: The alternative text for the image.
/// - `disBaseLink`: The base link for the image.
/// - `link`: The link to the image.
/// - `title`: The title of the image.
/// {@endtemplate}
@freezed
class Image with _$Image {
  /// {@macro image}
  factory Image({
    @JsonKey(name: 'alt') required String alternativeText,
    required String disBaseLink,
    required String link,
    required String title,
  }) = _Image;

  /// Creates an instance of [Image] from a JSON object.
  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

/// {@template variation_attribute}
/// Represents a variation attribute for a product.
///
/// This class includes various fields that describe the variation attribute, including
/// its ID and value.
///
/// - `id`: The unique identifier of the variation attribute.
/// - `value`: The value of the variation attribute.
/// {@endtemplate}
@freezed
class VariationAttribute with _$VariationAttribute {
  /// {@macro variation_attribute}
  factory VariationAttribute({
    required String id,
    required String value,
  }) = _VariationAttribute;
}
