import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/core/utils/consts.dart';

class CertificateModel {
  final String name, source, date, skills, link;

  const CertificateModel({
    required this.date,
    required this.link,
    required this.name,
    required this.skills,
    required this.source,
  });
  factory CertificateModel.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> document,
  ) {
    final data = document.data()!;
    return CertificateModel(
      name: data[FirestoreKeys.fName],
      source: data[FirestoreKeys.fSource],
      date: data[FirestoreKeys.fDate],
      skills: data[FirestoreKeys.cSkills],
      link: data[FirestoreKeys.fLink],
    );
  }
}
