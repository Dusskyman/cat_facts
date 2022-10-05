part of 'cat_fact_bloc.dart';

class CatFactState {
  final CatFactStatus currentCatFactStatus;
  final CatFactStatus savedCatFactsStatus;
  final CatFactDto? currentCatFact;
  final List<CatFactDto>? listSavedCatFacts;

  const CatFactState({
    this.currentCatFactStatus = CatFactStatus.initial,
    this.savedCatFactsStatus = CatFactStatus.initial,
    this.currentCatFact,
    this.listSavedCatFacts,
  });

  CatFactState copyWith(
      {CatFactStatus? currentCatFactStatus, CatFactStatus? savedCatFactsStatus, CatFactDto? currentCatFact, List<CatFactDto>? listSavedCatFacts}) {
    return CatFactState(
      currentCatFactStatus: currentCatFactStatus ?? this.currentCatFactStatus,
      savedCatFactsStatus: savedCatFactsStatus ?? this.savedCatFactsStatus,
      currentCatFact: currentCatFact ?? this.currentCatFact,
      listSavedCatFacts: listSavedCatFacts ?? this.listSavedCatFacts,
    );
  }
}
