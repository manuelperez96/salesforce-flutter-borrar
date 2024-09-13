/// Represents the different types of products.
enum ProductType {
  /// Represents a master product.
  ///
  /// A master product is a parent product that can have multiple variants.
  master,

  /// Represents an item product.
  ///
  /// An item product is a standard product without any variants.
  item,

  /// Represents an option product.
  ///
  /// An option product is a product that can be selected as an 
  /// option for another product.
  option,

  /// Represents a bundle product.
  ///
  /// A bundle product is a collection of products sold together as a 
  /// single unit.
  bundle,

  /// Represents a set product.
  ///
  /// A set product is a group of products that are sold together 
  /// but can be separated.
  set,

  /// Represents a variant product.
  ///
  /// A variant product is a specific version of a master product, differing 
  /// in attributes like size or color.
  variant,

  /// Represents a variation group product.
  ///
  /// A variation group product is a group of variant products that 
  /// share common attributes.
  variationGroup;

  /// Creates a set of [ProductType] from a JSON object.
  ///
  /// - `json`: The JSON object to parse.
  ///
  /// Returns a set of [ProductType] parsed from the JSON object.
  static Set<ProductType> fromJson(Map<String, dynamic> json) {
    return json.entries.map((e) => e.key).map(ProductType.fromValue).toSet();
  }

  /// Parses a string value to a [ProductType].
  ///
  /// - `value`: The string value to parse.
  ///
  /// Returns the corresponding [ProductType] or throws an [ArgumentError] 
  /// if the value does not match.
  static ProductType fromValue(String value) {
    return switch (value) {
      'master' => ProductType.master,
      'item' => ProductType.item,
      'option' => ProductType.option,
      'bundle' => ProductType.bundle,
      'set' => ProductType.set,
      'variant' => ProductType.variant,
      'variationGroup' => ProductType.variationGroup,
      _ => throw ArgumentError(
          '$value can not be parsed to an instance of type ProductType',
        ),
    };
  }
}

/// Extension methods for a set of [ProductType].
extension ProductTypeX on Set<ProductType> {
  /// Checks if the set contains a master product.
  bool get isMaster => contains(ProductType.master);

  /// Checks if the set contains an item product.
  bool get isItem => contains(ProductType.item);

  /// Checks if the set contains an option product.
  bool get isOption => contains(ProductType.option);

  /// Checks if the set contains a set product.
  bool get isSet => contains(ProductType.set);

  /// Checks if the set contains a variant product.
  bool get isVariant => contains(ProductType.variant);

  /// Checks if the set contains a variation group product.
  bool get isVariationGroup => contains(ProductType.variationGroup);
}
