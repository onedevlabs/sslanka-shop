import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'redirect_mobile.dart' if (dart.library.html) 'redirect_web.dart';

class WebRedirectScreen extends StatefulWidget {
  const WebRedirectScreen({super.key});

  @override
  State<WebRedirectScreen> createState() => _WebRedirectScreenState();
}

class _WebRedirectScreenState extends State<WebRedirectScreen> {
  final String websiteUrl = 'https://sslankaonlineshop.com/';

  @override
  void initState() {
    super.initState();
    // Auto redirect after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      _openWebsite();
    });
  }

  void _openWebsite() {
    redirectToWebsite(websiteUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              // App logo placeholder
              Icon(
                Icons.shopping_bag,
                size: 120,
                color: Colors.blue.shade700,
              ),
              const SizedBox(height: 30),
              const Text(
                'SSL Lanka Online Shop',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Redirecting to website...',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),
              const CircularProgressIndicator(),
              const SizedBox(height: 60),
              OutlinedButton.icon(
                onPressed: _openWebsite,
                icon: const Icon(Icons.open_in_browser),
                label: const Text('Open Website Now'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                websiteUrl,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue.shade600,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 60),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Icon(Icons.phone_iphone, size: 40, color: Colors.blue.shade700),
                    const SizedBox(height: 15),
                    const Text(
                      'Get the Mobile App!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Download our mobile app from Google Play Store or Apple App Store for the best shopping experience.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
