part of 'cat_fact_bloc.dart';

enum CatFactStatus {
  initial,
  success,
  error,
  loading,
}

class CatFactEvent {
  const CatFactEvent();
}

class GetCatFactEvent extends CatFactEvent {
  const GetCatFactEvent();
}

class GetSavedCatFactsEvent extends CatFactEvent {
  const GetSavedCatFactsEvent();
}
