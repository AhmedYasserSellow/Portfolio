import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/models/personal_data_model.dart';
import 'package:portfolio/features/drawer/presentation/views/widgets/contact_info_list_tile.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class ContactInfoList extends StatelessWidget {
  const ContactInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    final PersonalDataModel personalDataModel =
        context.read<HomeCubit>().personalData;
    return Column(
      children: [
        ContactInfoListTile(
          title: 'Phone',
          info: personalDataModel.phone,
        ),
        ContactInfoListTile(
          title: 'Email',
          info: personalDataModel.email,
        ),
        ContactInfoListTile(
          title: 'LinkedIn',
          info: '@' '${personalDataModel.linkedin}',
        ),
        ContactInfoListTile(
          title: 'Github',
          info: '@' '${personalDataModel.github}',
        ),
      ],
    );
  }
}
