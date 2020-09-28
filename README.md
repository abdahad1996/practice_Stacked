# Practice_Stacked

A new Flutter project.

## Getting Started

for injectable run code :
//TODO
flutter pub run build_runner build --delete-conflicting-outputs

for autoroute run code:
//TODO

UNIT TESTING:
    Naming a Unit test for readability

- We need to know what class is being tested, file name if you're functional.
- We need to know what function is being called, or which property is inspected
- We need to you HOW the function was called, with which values (if appropriate) or with which assumptions, if any.
- We need to know what to expect as a result

EG:
group('ProductDetailsViewModel Tests -', () {
   group('updateProduct -', () {
      test(
          'When called should call updateCartProduct with cart product and updated data',
          (){

      });
   });
 });

 All the tests in the updateProduct test suite will have ProductDetailsViewModel Tests - updateProduct - prefixed to its name. This allows you to read the tests for each class and each function / property clearly.

Unit Test Structure:
When writing a unit test there's s certain structure to follow. Arrange, Act, Assert. Or in normal english, Setup, Action, Result. In the setup portion of the unit test you construct the object you're testing (if any) in the action you perform or call the function you want to test and in the result section you check your expectations or assumptions are correct. This holds true for all unit tests I've written. In some cases Action and Result is merged like when testing for exceptions being thrown. This is how a normal unit test will look in Flutter in one of my code bases.
test('Given a paged query result, return PaginatedQuery as query type',
          () {
  // Setup - Arrange
  var parser = GraphQLResponseParser();
  // Action - Act
  var result = parser.determineQueryType(addressResponse['data']);
  // Result - Assert
  expect(result, GqlResultType.PaginatedQuery);
 });

What is Mocking

Mocking is the act of creating duplicates of a real class to simulate the required behaviour. It will be an exact copy of your public facing interface for a class but you can control what it returns, when it returns those values as well as how it returns those values.

Why is Mocks Important

When writing unit tests, you want to only be testing the code that does the actual unit of work. This means that you cannot have non-deterministic behaviours. Things like calling DateTime.now is non deterministic because your test might fail depending on what time of the day it is on the system it's running. This allows you to do STRICT unit testing which is testing ONLY the unit of work or functionality at hand. Mocks are also important early on in the development because it allows you to develop your system / application without being concerned about the implementation details.

Test Setup and Teardown

This is a common pattern followed that allows you to write some code that will run before every test or before every group of tests. In our setup function we want to register all services. This is to mimic how it happens in the app. All services are registered before the app even runs as you'll see in the setupLocator function in main. Open up the test_helpers.dart file and we'll create a registerServices function.

stubbing:
making the assumption to pass the code and stubbing that .

TDD:
-compile
-fail
-stubbing
-pass