import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['to@example.com'],
    cc: ['cc1@example.com', 'cc2@example.com'],
    subject: 'mailto example subject',
    body: 'mailto example ',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  // ignore: deprecated_member_use
  await launch('$mailtoLink');
}