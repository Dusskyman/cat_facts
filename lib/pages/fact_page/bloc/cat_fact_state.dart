part of 'cat_fact_bloc.dart';

abstract class CatFactState {}

class CatFactSuccessState implements CatFactState {
  final CatFactWithImageDto currentCatFact;

  const CatFactSuccessState({
    required this.currentCatFact,
  });
}

class CatFactErrorState implements CatFactState {
  final String? error;

  const CatFactErrorState(this.error);
}

class CatFactLoadingState implements CatFactState {
  const CatFactLoadingState();
}
