import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLancherUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await launchUrl(uri)) {
      canLaunchUrl(uri);
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        "can not launch $url",
        style: const TextStyle(color: Colors.white, fontSize: 22),
      ),
      backgroundColor: Colors.red,
    ));
  }
}
