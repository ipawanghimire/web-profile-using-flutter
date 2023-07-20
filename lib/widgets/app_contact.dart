import 'package:flutter/material.dart';

class AppContact extends StatelessWidget {
  const AppContact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ContactItem(
          icon: Icons.email,
          text: 'ipawanghimire@gmail.com',
        ),
        ContactItem(
          icon: Icons.phone,
          text: '+9779860262619',
        ),
        SocialMediaItem(
          icon: Icons.facebook,
          url: 'https://www.facebook.com/your_username',
        ),
        SocialMediaItem(
          icon: Icons.email,
          url: 'https://www.twitter.com/your_username',
        ),
        // Add more social media handles here if needed
      ],
    );
  }
}

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 4),
          Text(text),
        ],
      ),
    );
  }
}

class SocialMediaItem extends StatelessWidget {
  final IconData icon;
  final String url;

  const SocialMediaItem({super.key, required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () {
          // Open the social media URL when tapped
          // You can use the launch package to open the URL
        },
        child: Icon(icon),
      ),
    );
  }
}
