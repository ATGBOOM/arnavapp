
import 'package:freezed_annotation/freezed_annotation.dart';
part 'first_page_view_state.freezed.dart';

@freezed
class FirstPageViewState with _$FirstPageViewState{
  const factory FirstPageViewState.displayProducts(
      List<String> fabricImages,
      List<String> carouselImages,
      ) = _DisplayProducts;
  const factory FirstPageViewState.loading() = _Loading;
  const factory FirstPageViewState.error(String errorMessage) = _Error;

}