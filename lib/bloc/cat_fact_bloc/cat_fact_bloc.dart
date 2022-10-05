import 'package:bloc/bloc.dart';
import 'package:cat_facts/local_storage/cat_fact_storage/cat_fact_storage.dart';
import 'package:cat_facts/models/cat_fact_dto/cat_fact_dto.dart';
import 'package:cat_facts/network/dio_config.dart';
import 'package:cat_facts/network/repository/cat_fact_repository.dart';

part 'cat_fact_event.dart';
part 'cat_fact_state.dart';

class CatFactBloc extends Bloc<CatFactEvent, CatFactState> {
  CatFactBloc() : super(CatFactState()) {
    on<GetCatFactEvent>(_mapCurrentCatFactEventToState);
    on<GetSavedCatFactsEvent>(_mapSavedCatFactsEventToState);
  }

  final CatFactRepository catFactRepository = CatFactRepository(DioConfig.instance.provideUnAuthorizedDio());
  final CatFactStorage catFactStorage = CatFactStorage.instance();

  void _mapCurrentCatFactEventToState(CatFactEvent event, Emitter<CatFactState> emit) async {
    try {
      emit(state.copyWith(currentCatFactStatus: CatFactStatus.loading));
      final CatFactDto catFactDto = await catFactRepository.getCatFact();
      final bool contains = state.listSavedCatFacts!.isNotEmpty &&
          state.listSavedCatFacts!.firstWhere((element) => element.fact == catFactDto.fact, orElse: (() => CatFactDto())).fact != null;
      if (!contains) {
        final tepmCatList = state.listSavedCatFacts!;
        tepmCatList.add(catFactDto);
        catFactStorage.saveCatFacts(tepmCatList);
        emit(state.copyWith(listSavedCatFacts: tepmCatList));
      }
      emit(state.copyWith(currentCatFactStatus: CatFactStatus.success, currentCatFact: catFactDto));
    } catch (e) {
      emit(state.copyWith(currentCatFactStatus: CatFactStatus.error));
    }
  }

  void _mapSavedCatFactsEventToState(CatFactEvent event, Emitter<CatFactState> emit) async {
    try {
      emit(state.copyWith(savedCatFactsStatus: CatFactStatus.loading));
      final List<CatFactDto> savedCatFacts = await catFactRepository.getSavedCatFact();
      emit(state.copyWith(savedCatFactsStatus: CatFactStatus.success, listSavedCatFacts: savedCatFacts));
    } catch (e) {
      emit(state.copyWith(savedCatFactsStatus: CatFactStatus.error));
    }
  }
}
