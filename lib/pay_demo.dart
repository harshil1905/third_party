// import 'package:flutter/material.dart';
// import 'package:pay/pay.dart';

// class GooglePayDemo extends StatefulWidget {
//   const GooglePayDemo({super.key});

//   @override
//   State<GooglePayDemo> createState() => GooglePayDemoState();
// }

// class GooglePayDemoState extends State<GooglePayDemo> {
//   final String defaultGooglePay = '''{
// "provider": "google_pay",
// "data": {
// "environment": "TEST",
// "apiVersion": 2,
// "apiVersionMinor": 0,
// "allowedPaymentMethods": [
// {
// "type": "CARD",
// "tokenizationSpecification": {
// "type": "PAYMENT_GATEWAY",
// "parameters": {
// "gateway": "example",
// "gatewayMerchantId": "gatewayMerchantId"
// }
// },
// "parameters": {
// "allowedCardNetworks": ["VISA", "MASTERCARD"],
// "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
// "billingAddressRequired": true,
// "billingAddressParameters": {
// "format": "FULL",
// "phoneNumberRequired": true
// }
// }
// }
// ],
// "merchantInfo": {
// "merchantId": "01234567890123456789",
// "merchantName": "Example Merchant Name"
// },
// "transactionInfo": {
// "countryCode": "US",
// "currencyCode": "USD"
// }
// }
// }''';
//   void onGooglePayResult(paymentResult) {}
//   final paymentItems = [
//     const PaymentItem(
//       label: 'Total',
//       amount: '99.99',
//       status: PaymentItemStatus.final_price,
//     )
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: GooglePayButton(
//           paymentConfiguration:
//               PaymentConfiguration.fromJsonString(defaultGooglePay),
//           paymentItems: paymentItems,
//           type: GooglePayButtonType.pay,
//           margin: const EdgeInsets.only(top: 15.0),
//           onPaymentResult: onGooglePayResult,
//           loadingIndicator: const Center(
//             child: CircularProgressIndicator(),
//           ),
//         ),
//       ),
//     );
//   }
// }
