import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/models/personal_data_model.dart';
import 'package:portfolio/core/utils/consts.dart';
import 'package:portfolio/features/certifications/data/models/certificate_model.dart';
import 'package:portfolio/features/drawer/data/models/skill_model.dart';
import 'package:portfolio/features/projects/data/models/project_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  late PageController pageController;
  late PersonalDataModel personalData;
  late List<ProjectModel> projectModelsList;
  late List<CertificateModel> certificationsModelList;
  late List<SkillModel> skillsModelList;
  int pageIndex = 0;

  void changePageIndex(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(
        milliseconds: 500,
      ),
      curve: Curves.easeIn,
    );
    pageIndex = index;
    emit(ChangePageIndex());
  }

  void initPageView() {
    pageController = PageController(initialPage: pageIndex);
  }

  Future loadData() async {
    final firestore = FirebaseFirestore.instance;
    getPersonalData(firestore);
    getProjects(firestore);
    getCertifications(firestore);
    getSkills(firestore);
  }

  Future getCertifications(FirebaseFirestore firestore) async {
    await firestore
        .collection(FirestoreKeys.cCertifications)
        .get()
        .then((value) {
      certificationsModelList = List.generate(
        value.docs.length,
        (index) => CertificateModel.fromSnapshot(
          value.docs[index],
        ),
      );
    });
  }

  Future getPersonalData(FirebaseFirestore firestore) async {
    final document = await firestore
        .collection(FirestoreKeys.cData)
        .doc(FirestoreKeys.dVariableData)
        .get();
    personalData = PersonalDataModel.fromSnapshot(document);
  }

  Future getProjects(FirebaseFirestore firestore) async {
    await firestore.collection(FirestoreKeys.cProjects).get().then((value) {
      projectModelsList = List.generate(
        value.docs.length,
        (index) => ProjectModel.fromSnapshot(value.docs[index]),
      );
    });
  }

  Future getSkills(FirebaseFirestore firestore) async {
    await firestore
        .collection(FirestoreKeys.cData)
        .doc(FirestoreKeys.dVariableData)
        .collection(FirestoreKeys.cSkills)
        .get()
        .then((value) {
      skillsModelList = List.generate(
        value.docs.length,
        (index) => SkillModel.fromSnapshot(
          value.docs[index],
        ),
      );
    });
  }
}
