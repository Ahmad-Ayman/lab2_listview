import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Column(
        children: [
          Lottie.asset('assets/images/product.json'),
          ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Wohooooooooo",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 10,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Text('Hello'),
          ),
          ElevatedButton(
            onPressed: () {
              // final Uri url = Uri.parse('https://flutter.dev');
              // launchInBrowser(url);
              makePhoneCall('+201140270946');
            },
            child: Text('cancel toast'),
          ),
        ],
      ),
    );
  }

  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}

/*
Scaffold > App Bar >> Text
          > Body > Column
                        ><> Container >> Column >
                                            >> Row ( Text , icon )
                                             >> List View ( Column ( Circle
                                             Avatar ,. text )

                        >> Container
 */
