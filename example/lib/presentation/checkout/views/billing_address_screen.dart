import 'package:example/components/basket_double_form_field.dart';
import 'package:example/components/basket_form_field.dart';
import 'package:example/constants.dart';
import 'package:example/presentation/basket/bloc/cart_bloc.dart';
import 'package:example/presentation/basket/bloc/cart_event.dart';
import 'package:example/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/models/responses/order/ing_address.dart';

class BillingAddressScreen extends StatefulWidget {
  const BillingAddressScreen({super.key});

  @override
  State<BillingAddressScreen> createState() => _BillingAddressScreenState();
}

class _BillingAddressScreenState extends State<BillingAddressScreen> {
  bool showFloating = false;
  late TextEditingController _addressController;
  late TextEditingController _cityController;
  late TextEditingController _countryCodeController;
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _postalCodeController;
  late TextEditingController _stateCodeController;
  IngAddress? ingAddress;

  @override
  void initState() {
    super.initState();
    _addressController = TextEditingController();
    _cityController = TextEditingController();
    _countryCodeController = TextEditingController();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _postalCodeController = TextEditingController();
    _stateCodeController = TextEditingController();
  }

  void validate() {
    if (_addressController.text.isNotEmpty &&
        _cityController.text.isNotEmpty &&
        _countryCodeController.text.isNotEmpty &&
        _firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _postalCodeController.text.isNotEmpty &&
        _stateCodeController.text.isNotEmpty) {
      showFloating = true;
      ingAddress = IngAddress(
        address1: _addressController.text,
        city: _cityController.text,
        countryCode: _countryCodeController.text,
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        postalCode: _postalCodeController.text,
        stateCode: _stateCodeController.text,
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
        title: const Text('Dirección de envío'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyField(
                controller: _addressController,
                hint: 'Address',
                validate: validate,
              ),
              const SizedBox(height: defaultPadding),
              MyDoubleRowField(
                controller: _cityController,
                hint: 'City',
                controller2: _postalCodeController,
                hint2: 'PostalCode',
                validate: validate,
              ),
              const SizedBox(height: defaultPadding),
              MyDoubleRowField(
                controller: _firstNameController,
                hint: 'FirstName',
                controller2: _lastNameController,
                hint2: 'LastName',
                validate: validate,
              ),
              const SizedBox(height: defaultPadding),
              MyDoubleRowField(
                controller: _countryCodeController,
                hint: 'CuntryCode',
                controller2: _stateCodeController,
                hint2: 'StateCode',
                validate: validate,
              ),
              const SizedBox(height: defaultPadding),
              CheckboxListTile(
                value: true,
                onChanged: (value) {},
                enabled: false,
                title: const Text(
                  'Usar también como dirección de facturación',
                  style: TextStyle(fontSize: 15),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<CartBloc>()
            ..add(
              AddBillingAddress(
                ingAddress: ingAddress!,
              ),
            )
            ..add(AddShipment());

          Navigator.pushNamed(context, paymentMethodScreenRoute);
        },
        label: const Row(
          children: [
            Text('Continuar'),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.keyboard_arrow_right_rounded),
          ],
        ),
      ),
    );
  }
}
