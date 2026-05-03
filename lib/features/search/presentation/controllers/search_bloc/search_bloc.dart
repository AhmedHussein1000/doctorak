import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:doctorak/features/search/domain/repositories/base_search_repository.dart';
import 'package:doctorak/features/search/presentation/controllers/search_bloc/search_event.dart';
import 'package:doctorak/features/search/presentation/controllers/search_bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final BaseSearchRepository _searchRepository;

  SearchBloc(this._searchRepository) : super(const Initial()) {
    on<QueryChanged>(
      _onQueryChanged,
      transformer: (events, mapper) => events
          .debounceTime(const Duration(milliseconds: 500))
          .switchMap(mapper),
    );
  }

  Future<void> _onQueryChanged(
    QueryChanged event,
    Emitter<SearchState> emit,
  ) async {
    final query = event.query.trim();
    if (query.isEmpty) {
      emit(const Initial());
      return;
    }

    emit(const SearchState.loading());

    final result = await _searchRepository.searchDoctors(query);
    result.when(
      success: (doctors) {
        emit(SearchState.success(doctors));
      },
      failure: (apiErrorModel) => emit(SearchState.error(apiErrorModel)),
    );
  }
}
