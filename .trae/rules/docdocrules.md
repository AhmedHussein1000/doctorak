Flutter medical appointment app.

Architecture: Clean Architecture
State: Cubit
Navigation: GoRouter
Responsive: ScreenUtil
Testing: unit + integretion tests

Structure:
features/feature_name/data|domain|presentation

Domain:
- Pure Dart entities
- Usecases call repository only
- Return ApiResult<ApiErrorModel, Entity>


Presentation:
- Cubit calls usecases only
- States: initial, loading, success, error
- Use when/maybeWhen/whenOrNull in UI
- No business logic in widgets

Use named routes.
Use .w .h .sp .r for dimensions.
Do not edit generated files.
Follow existing patterns.