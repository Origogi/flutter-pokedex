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

@freezed
class ImageUrlSetData with _$ImageUrlSetData {
  const factory ImageUrlSetData({
    @JsonKey(name: 'front_default')
    required String frontDefault,
  }) = _ImageUrlSetData;

  factory ImageUrlSetData.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlSetDataFromJson(json);
}