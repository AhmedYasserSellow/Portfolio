import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_text_styles.dart';
import 'package:portfolio/features/projects/data/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/views/widgets/project_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem(
      {super.key, required this.projectModel, required this.index});
  final ProjectModel projectModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  (index + 1).toString().length == 1
                      ? '0${(index + 1).toString()}'
                      : (index + 1).toString(),
                  style: AppTextStyles.ktsBigHeader,
                ),
                Image.network(
                  projectModel.photoLink,
                  height: 80,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                projectModel.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                projectModel.description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              ProjectButton(
                onTap: () async {
                  await launchUrlString(
                    projectModel.link,
                  );
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
