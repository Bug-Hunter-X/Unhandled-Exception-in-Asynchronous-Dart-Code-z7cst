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
    // Handle timeout specific issues, perhaps retry
  } on SocketException catch (e) {
    print('Socket Exception: $e');
    // Handle network errors
  } on Exception catch (e) {
    print('An error occurred: $e');
    // Log the error for debugging and implement fallback
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Handle generic error cases, perhaps display a user-friendly message
  }
}
```