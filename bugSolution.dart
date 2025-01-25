```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle error more gracefully
      print('Error fetching data. Status code: ${response.statusCode}, Response Body: ${response.body}');
      // Instead of rethrowing, consider a more specific error handling strategy.
    }
  } catch (e, stacktrace) {
    // Log error with stacktrace for better debugging
    print('Error fetching data: $e, Stacktrace: $stacktrace');
    // Consider alternative handling: return a default value, show an error message, or implement retry logic.
  }
}
```