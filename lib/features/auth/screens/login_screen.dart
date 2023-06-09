import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:mino/colors.dart';
import 'package:mino/common/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login-screen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      context: context,
      // ignore: no_leading_underscores_for_local_identifiers
      onSelect: (Country _country) {
        setState(() {
          country = _country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text("Enter your phone number"),
        ),
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Mino will need to verify your phone number'),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: pickCountry,
              child: const Text('Pick Country'),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                if (country != null) Text('+${country!.phoneCode}'),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: 'Phone Number',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.6),
            SizedBox(
              width: 90,
              child: CustomButton(
                onPressed: () {},
                text: 'Next',
              ),
            )
          ],
        ),
      ),
    );
  }
}
