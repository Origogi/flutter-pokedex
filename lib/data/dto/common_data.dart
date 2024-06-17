import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_data.freezed.dart';
part 'common_data.g.dart';


@freezed
class NameUrlData with _$NameUrlData {
  const factory NameUrlData({
    required String name,
    required String url,
  }) = _NameUrlData;

  factory NameUrlData.fromJson(Map<String, dynamic> json) =>
      _$NameUrlDataFromJson(json);
}