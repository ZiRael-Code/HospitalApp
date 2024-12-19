import 'dart:io';

void main() async {
  // Specify the file to check
  final filePath = 'lib/MainScreen/Dashboard.dart';

  // Read the file contents
  final file = File(filePath);
  if (!await file.exists()) {
    print('File not found: $filePath');
    return;
  }

  // Read the content of the file
  String content = await file.readAsString();

  // Regular expression to find `getFontSize(anyNumberInt, context)`
  final regex = RegExp(r'getFontSize\((\d+),\s*context\)');

  // Replace matches with `getFontSize(anyNumberInt)`
  String updatedContent = content.replaceAllMapped(regex, (match) {
    return 'getFontSize(${match.group(1)})';
  });

  // Write the updated content back to the file
  await file.writeAsString(updatedContent);

  print('File updated successfully!');
}
