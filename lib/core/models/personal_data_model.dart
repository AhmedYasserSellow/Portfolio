import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/core/utils/consts.dart';

class PersonalDataModel {
  final String email,
      phone,
      github,
      linkedin,
      facebook,
      twitter,
      instagram,
      photo,
      cv;
  const PersonalDataModel({
    required this.email,
    required this.phone,
    required this.github,
    required this.linkedin,
    required this.facebook,
    required this.instagram,
    required this.twitter,
    required this.photo,
    required this.cv,
  });

  factory PersonalDataModel.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> document,
  ) {
    final data = document.data()!;
    return PersonalDataModel(
      facebook: data[FirestoreKeys.fFacebook],
      instagram: data[FirestoreKeys.fInstagram],
      twitter: data[FirestoreKeys.fTwitter],
      cv: data[FirestoreKeys.fCV],
      email: data[FirestoreKeys.fEmail],
      phone: data[FirestoreKeys.fPhone],
      github: data[FirestoreKeys.fGitHub],
      linkedin: data[FirestoreKeys.fLinkedIn],
      photo: data[FirestoreKeys.fPhoto],
    );
  }
}
