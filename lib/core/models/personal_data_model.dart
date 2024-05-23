import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/core/utils/consts.dart';

class PersonalDataModel {
  final String email, phone, github, linkedin, photo, cv;
  const PersonalDataModel({
    required this.email,
    required this.phone,
    required this.github,
    required this.linkedin,
    required this.photo,
    required this.cv,
  });

  factory PersonalDataModel.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> document,
  ) {
    final data = document.data()!;
    return PersonalDataModel(
      cv: data[FirestoreKeys.fCV],
      email: data[FirestoreKeys.fEmail],
      phone: data[FirestoreKeys.fPhone],
      github: data[FirestoreKeys.fGitHub],
      linkedin: data[FirestoreKeys.fLinkedIn],
      photo: data[FirestoreKeys.fPhoto],
    );
  }
}
