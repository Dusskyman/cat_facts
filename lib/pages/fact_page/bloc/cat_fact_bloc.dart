import 'package:bloc/bloc.dart';
import 'package:cat_facts/config/logger.dart';
import 'package:cat_facts/models/cat_fact_with_image/cat_fact_with_image_dto.dart';
import 'package:cat_facts/network/dio_config.dart';
import 'package:cat_facts/network/repository/cat_fact_repository.dart';

part 'cat_fact_event.dart';
part 'cat_fact_state.dart';

class CatFactBloc extends Bloc<CatFactEvent, CatFactState> {
  CatFactBloc() : super(const CatFactLoadingState()) {
    on<GetCatFactEvent>(_catFactToState);
  }

  final CatFactRepository catFactRepository =
      CatFactRepository(DioConfig.instance.getDio());

  void _catFactToState(
    CatFactEvent event,
    Emitter<CatFactState> emit,
  ) async {
    try {
      emit(const CatFactLoadingState());
      final responce = await catFactRepository.getCatFact();
      emit(CatFactSuccessState(currentCatFact: responce));
    } catch (error, stackTrace) {
      Logger.e('CatFactBloc._mapCurrentCatFactEventToState', error, stackTrace);
    }
  }
}
