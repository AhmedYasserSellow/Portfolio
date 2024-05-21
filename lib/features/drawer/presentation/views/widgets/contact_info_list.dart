import 'package:flutter/material.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/contact_info_list_tile.dart';

class ContactInfoList extends StatelessWidget {
  const ContactInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ContactInfoListTile(
          title: 'Phone',
          info: '+201028825215',
        ),
        ContactInfoListTile(
          title: 'Email',
          info: 'ahmedyasser3554@gmail.com',
        ),
        ContactInfoListTile(
          title: 'LinkedIn',
          info: '@ahmedyasser2002',
        ),
        ContactInfoListTile(
          title: 'Github',
          info: '@ahmedyassersellow',
        ),
      ],
    );
  }
}
