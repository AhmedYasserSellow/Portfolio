import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final String row1 = r'$ find / name-"life.dart"';
  final String row2 = '> Searching ...';
  final String row3 = '> Error: No life is found!';
  final String row4 = '> Since you are a programmer you have no life!';
  final int duration = 50;
  bool isRow2 = false;
  bool isRow3 = false;
  bool isRow4 = false;

  animateDartWindow() async {
    Future.delayed(
      Duration(milliseconds: duration * row1.length),
      () {
        isRow2 = true;
        emit(HomeDartRowAdded());
      },
    ).then((value) {
      Future.delayed(
        Duration(milliseconds: duration * row2.length),
        () {
          isRow3 = true;
          emit(HomeDartRowAdded());
        },
      ).then((value) {
        Future.delayed(
          Duration(milliseconds: duration * row3.length),
          () {
            isRow4 = true;
            emit(HomeDartRowAdded());
          },
        );
      });
    });
  }
}
