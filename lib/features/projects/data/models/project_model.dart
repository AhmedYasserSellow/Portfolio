class ProjectModel {
  final String name, description, link;
  final String? photoLink;
  const ProjectModel({
    this.photoLink,
    required this.description,
    required this.link,
    required this.name,
  });
}
