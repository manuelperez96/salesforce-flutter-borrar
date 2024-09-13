import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/components/basket_double_form_field.dart';
import 'package:example/ui/components/basket_form_field.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/screen/basket/bloc/cart_bloc.dart';
import 'package:example/ui/screen/basket/bloc/cart_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class BillingAddressScreen extends StatefulWidget {
  const BillingAddressScreen({super.key});

  @override
  State<BillingAddressScreen> createState() => _BillingAddressScreenState();
}

class _BillingAddressScreenState extends State<BillingAddressScreen> {
  bool showFloating = false;
  late TextEditingController _addressController;
  late TextEditingController _cityController;
  //late TextEditingController _countryCodeController;
  //late TextEditingController _stateCodeController;
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _postalCodeController;
  late TextEditingController _phoneNumberController;
  IngAddress? ingAddress;

  @override
  void initState() {
    super.initState();
    _addressController = TextEditingController();
    _cityController = TextEditingController();
    //_countryCodeController = TextEditingController();
    //_stateCodeController = TextEditingController();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _postalCodeController = TextEditingController();
    _phoneNumberController = TextEditingController();
  }

  void validate() {
    if (_addressController.text.isNotEmpty &&
        _cityController.text.isNotEmpty &&
        //_stateCodeController.text.isNotEmpty &&
        //_countryCodeController.text.isNotEmpty &&
        _firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _phoneNumberController.text.isNotEmpty &&
        _postalCodeController.text.isNotEmpty) {
      showFloating = true;
      ingAddress = IngAddress(
        address1: _addressController.text,
        city: _cityController.text,
        countryCode: '_countryCodeController.text',
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        postalCode: _postalCodeController.text,
        stateCode: '_stateCodeController.text',
      );
    } else {
      showFloating = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.shipping_title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutFormDoubleField(
                controller: _firstNameController,
                hint: context.l10n.shipping_hint_first_name,
                controller2: _lastNameController,
                hint2: context.l10n.shipping_hint_last_name,
                validate: validate,
              ),
              const SizedBox(height: defaultPadding / 2),
              const Divider(
                color: blackColor40,
                indent: 15,
                endIndent: 15,
              ),
              const SizedBox(height: defaultPadding / 2),
              CheckoutFormField(
                controller: _addressController,
                hint: context.l10n.shipping_hint_address,
                validate: validate,
              ),
              const SizedBox(height: defaultPadding),
              CheckoutFormDoubleField(
                controller: _cityController,
                hint: context.l10n.shipping_hint_city,
                controller2: _postalCodeController,
                hint2: context.l10n.shipping_hint_postal_code,
                validate: validate,
              ),
              const SizedBox(height: defaultPadding / 2),
              const Divider(
                color: blackColor40,
                indent: 15,
                endIndent: 15,
              ),
              const SizedBox(height: defaultPadding / 2),
              CheckoutFormField(
                controller: _phoneNumberController,
                hint: context.l10n.shipping_hint_phone_number,
                validate: validate,
              ),
              // CheckoutFormDoubleField(
              //   controller: _countryCodeController,
              //   hint: context.l10n.shipping_hint_country_code,
              //   controller2: _stateCodeController,
              //   hint2: context.l10n.shipping_hint_state_code,
              //   validate: validate,
              // ),
              const SizedBox(height: defaultPadding),
              CheckboxListTile(
                value: true,
                onChanged: (value) {},
                enabled: false,
                title: Text(
                  context.l10n.shipping_billing_address,
                  style: const TextStyle(fontSize: 15),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: AnimatedOpacity(
        duration: const Duration(seconds: 1),
        opacity: showFloating ? 1 : 0.3,
        child: FloatingActionButton.extended(
          onPressed: () {
            if (showFloating) {
              context.read<CartBloc>()
                ..add(
                  AddBillingAddress(
                    ingAddress: ingAddress!,
                    phoneNumber: _phoneNumberController.text,
                  ),
                )
                ..add(AddShipment());

              Navigator.pushNamed(context, paymentMethodScreenRoute);
            }
          },
          label: Row(
            children: [
              Text(context.l10n.continue_button),
              const SizedBox(
                width: 5,
              ),
              const Icon(Icons.keyboard_arrow_right_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
