import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/core/utils/consts.dart';

class SkillModel {
  const SkillModel({
    required this.imagePath,
    required this.title,
    required this.value,
  });
  final String imagePath, title;
  final double value;

  factory SkillModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return SkillModel(
      title: data[FirestoreKeys.fTitle],
      imagePath: data[FirestoreKeys.fIcon],
      value: data[FirestoreKeys.fValue],
    );
  }
}
