import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:stacked/stacked.dart';

import 'payment_view_model.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<PaymentViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
              title: Text(
                "TOP-UP",
                style: TextStyle(
                    fontSize: 0.5 * size.height, color: kctitleTextColor),
              ),
              centerTitle: true,
              backgroundColor: kcappBarColor),
          backgroundColor: kcbackgroundColor,
          body: Column(
            children: <Widget>[
              CreditCardWidget(
                  cardBgColor: Colors.black,
                  cardNumber: model.cardNumber,
                  expiryDate: model.expiryDate,
                  cardHolderName: model.cardHolderName,
                  cvvCode: model.cvvCode,
                  showBackView: model.isCvvFocused),
              Expanded(
                child: SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    CreditCardForm(
                      textColor: kctextAndIconsColor,
                      onCreditCardModelChange: model.onCreditCardModelChange,
                    ),
                    RaisedButton(
                      color: kcappBarColor,
                      onPressed: () {},
                      child: Text(
                        'Pay',
                        style: TextStyle(
    fontSize: 0.002 * size.width, color: kctextAndIconsColor),
                      ),
                    )
                  ],
                )),
              ),
            ],
          )),
      viewModelBuilder: () => PaymentViewModel(),
    );
  }
}
