import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_view_state.freezed.dart';
@freezed
class OrdersViewState with _$OrdersViewState{
  const factory OrdersViewState.displayOrderForm(String customerName, String customerEmail) = _DisplayOrderForm;
  const factory OrdersViewState.displayLoading() = _DisplayLoading;
  const factory OrdersViewState.displayError(String errorMessage) = _DisplayError;
  const factory OrdersViewState.displayOrderPlaced() = _DisplayOrderPlaced;

}