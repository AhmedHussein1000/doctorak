sealed class SearchEvent {
  const SearchEvent();

  R when<R>({
    required R Function(String query) queryChanged,
  }) {
    if (this is QueryChanged) return queryChanged((this as QueryChanged).query);
    throw Exception('Unknown state');
  }

  R maybeWhen<R>({
    R Function(String query)? queryChanged,
    required R Function() orElse,
  }) {
    if (this is QueryChanged) {
      if (queryChanged != null) return queryChanged((this as QueryChanged).query);
      return orElse();
    }
    return orElse();
  }
}

class QueryChanged extends SearchEvent {
  final String query;
  const QueryChanged(this.query);
}
