```dart
import 'dart:async';

Future<void> fetchData() async {
  // Simulate an asynchronous operation that might fail
  await Future.delayed(Duration(seconds: 2));
  if (/* some condition */ true) {
    throw Exception('Network error');
  }
  // ... process data ...
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } on TimeoutException catch (e) {
    print('Request timed out: $e');
    // Handle timeout specific issues
  } on Exception catch (e) {
    print('An error occurred: $e');
    // Handle other exceptions. 
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Handle generic error cases
  }
}
```