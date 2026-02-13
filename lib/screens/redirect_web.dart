// Web-specific redirect implementation
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void redirectToWebsite(String url) {
  html.window.location.href = url;
}
