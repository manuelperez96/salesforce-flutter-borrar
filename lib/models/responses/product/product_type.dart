enum ProductType {
  master,
  item,
  option,
  bundle,
  set,
  variant,
  variationGroup;

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

extension ProductTypeX on Set<ProductType> {
  bool get isMaster => contains(ProductType.master);
  bool get isItem => contains(ProductType.item);
  bool get isOption => contains(ProductType.option);
  bool get isSet => contains(ProductType.set);
  bool get isVariant => contains(ProductType.variant);
  bool get isVariationGroup => contains(ProductType.variationGroup);
}
