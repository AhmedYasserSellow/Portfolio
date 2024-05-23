import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/core/utils/consts.dart';

class ProjectModel {
  final String name, description, link, photoLink;

  const ProjectModel({
    required this.photoLink,
    required this.description,
    required this.link,
    required this.name,
  });

  factory ProjectModel.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> document,
  ) {
    final data = document.data()!;
    return ProjectModel(
      photoLink: data[FirestoreKeys.fPhotoLink],
      description: data[FirestoreKeys.fDescription],
      link: data[FirestoreKeys.fLink],
      name: data[FirestoreKeys.fName],
    );
  }
}
