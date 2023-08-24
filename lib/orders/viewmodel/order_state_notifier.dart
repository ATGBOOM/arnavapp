import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/dbhelper/i_local_storage_manager.dart';
import 'package:arnavapp/injector/injection.dart';
import 'package:arnavapp/orders/state/orders_view_state.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/save_selection_details.dart';
import '../../dbhelper/local_storage_keys.dart';

class OrderStateNotifier  extends StateNotifier<OrdersViewState>{
  OrderStateNotifier():super(const OrdersViewState.displayLoading()){
    fetchCustomerDetails();

  }
  final _localeManager = locator<ILocalStorageManager>();
  final _logger = locator<LoggerUtils>();
  final _TAG = "orders state notifier";
  final _saveSelectionDetails = locator<SaveSelectionDetails>();

  Future<void> fetchCustomerDetails() async {
    state = const OrdersViewState.displayLoading();

    String customerName = await _localeManager.getStringFromKeyValueStorage(
        LocalStorageKeys.User_Name);
    String customerEmail = await _localeManager.getStringFromKeyValueStorage(
        LocalStorageKeys.User_Email);

    _logger.log(_TAG, "customer name is $customerName");
    _logger.log(_TAG, "customer email is $customerEmail");

    state = OrdersViewState.displayOrderForm(customerName, customerEmail);
  }
  void submitDetails(
      {required String customerName, required String customerEmail, required String customerPhone}) async{
    Map<String, String>  savedDetails = _saveSelectionDetails.getDetails();
    StringBuffer emailBodyText = StringBuffer();
    emailBodyText.write("Customer Details \n");
    emailBodyText.write("Customer name: $customerName \n");
    emailBodyText.write("Customer phone: $customerPhone \n");
    emailBodyText.write("Customer email: $customerEmail \n");
    emailBodyText.write("Customer has selected \n");
    savedDetails.forEach((key, value) {
      _logger.log(_TAG, "getting details with key $key and value $value");
      emailBodyText.write("$key with image URL $value \n\n");
    });

    final Email email = Email(
        body: emailBodyText.toString(),
        subject: "new order from $customerName",
        recipients: ["atgboom2669@gmail.com"],
        isHTML: false
    );

    await FlutterEmailSender.send(email);
    state = const OrdersViewState.displayOrderPlaced();
  }
  }

