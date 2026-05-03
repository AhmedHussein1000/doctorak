---
trigger: always_on
---

This is a Flutter medical appointment booking application.

Architecture: Clean Architecture
State management: Cubit
Data classes & states: Freezed
Navigation: GoRouter
Responsive UI: Flutter ScreenUtil
Testing: unit tests + integration tests

## Project Structure
features/
  feature_name/
    data/
    domain/
    presentation/

Do not break this structure.

--------------------------------------------------


Cubit states must sealed classes.

Each Cubit state should represent a UI case:
- initial
- loading
- success
- error


--------------------------------------------------

## Domain Layer
- Entities must be pure Dart.
- No Flutter imports.
- No Freezed in entities.

Usecases:
- implement it if needs like filters
- One responsibility per usecase.
- Call repositories only.

Repositories:
- Defined as abstract classes in domain layer.

--------------------------------------------------

## Data Layer
Models:
- Implemented using Freezed.
- Handle JSON serialization.

Repositories:
- Implement repository implementation in data layer.

Do not expose models outside data layer.

Handle exceptions and convert them to ApiErrorModel.

--------------------------------------------------

## Presentation Layer

Cubit:
- Call usecases only if implemented usecases.
- Emit loading before async operations.
- Emit success/error based on result.

UI:
- Must be passive.
- No business logic inside widgets.
- React to states using BlocBuilder/BlocConsumer.

--------------------------------------------------

## GoRouter
- Use named routes.
- Define route names as constants.
- Keep navigation logic outside UI widgets.
- Pass simple arguments only.

--------------------------------------------------

## ScreenUtil
- Use .w .h .sp .r for all dimensions.
- Avoid hardcoded values.
- Build responsive layouts by default.

--------------------------------------------------

## Testing

Unit tests:
- Test usecases if used.
- Test repositories if there are no usecases
- Test cubits.
- Mock repositories.
- Verify emitted states in order.

Widget tests:
- Test UI for each Cubit state.

--------------------------------------------------

## Naming Conventions

Cubit:
FeatureCubit

State:
FeatureState (Freezed)

Usecase:
action_subject_usecase

Examples:
- book_appointment_usecase
- get_doctor_details_usecase

--------------------------------------------------

## Performance
- Avoid storing large collections in state.
- Use pagination for long lists.
- Do not store controllers inside Cubit state.

--------------------------------------------------

## Feature Creation Workflow

When creating a new feature:

1. Create entity
2. Create repository contract
3. Create usecase
4. Create model
5. Create repository implementation
6. Create cubit with Freezed state
7. Create UI
8. Write unit tests

--------------------------------------------------

## AI Behavior Rules
- Reuse existing patterns in the project.
- Follow the existing design system.
- Generate minimal and precise code changes.
- Ensure the code compiles after generation.