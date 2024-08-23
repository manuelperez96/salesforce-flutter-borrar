import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_info.freezed.dart';
part 'customer_info.g.dart';

@freezed
class CustomerInfo with _$CustomerInfo {
  factory CustomerInfo({
    required String customerId,
    required String email,
  }) = _CustomerInfo;

  factory CustomerInfo.fromJson(Map<String, dynamic> json) =>
      _$CustomerInfoFromJson(json);
}
