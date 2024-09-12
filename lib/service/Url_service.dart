

import 'package:url_launcher/url_launcher.dart';

class UrlService{
  static Future<void> makePhoneCall(String phoneNumber)async{
    final Uri launchUri =Uri(scheme: "tel",path: phoneNumber);
    await launchUrl(launchUri);
  }


  static Future<void> launchInBrowser(Uri url) async {
    if (await canLaunchUrl(url)) {
      final bool launched = await launchUrl(url, mode: LaunchMode.externalApplication);
      if (!launched) {
        print("Failed to launch the URL: $url");
        throw "Could not launch $url";
      }
    } else {
      print("Cannot launch the URL: $url");
      throw "Cannot launch $url";
    }
  }
}