import 'dart:io';

void main() {
  // Directory containing Dart files
  final directory = Directory('lib');

  if (!directory.existsSync()) {
    print('The directory "lib" does not exist.');
    return;
  }

  // Process each Dart file
  directory.listSync(recursive: true).forEach((fileEntity) {
    if (fileEntity is File && fileEntity.path.endsWith('.dart')) {
      try {
        // Read file content
        final content = fileEntity.readAsStringSync();

        // Remove the specific import statement
        // final updatedContent = content.replaceAll(
        //   "import '../Main/Dashboard.dart';\n",
        //   '',
        // );
        final updatedContent = content.replaceAll(
          "import '../MainSelectionScreen/Dashboard.dart';\n",
          '',
        );
        final updatedContent1 = content.replaceAll(
          "import '../../MainSelectionScreen/Dashboard.dart';\n",
          '',
        );

        // Write back updated content if there's a change
        if (updatedContent != content) {
          fileEntity.writeAsStringSync(updatedContent);
          print('Removed import from: ${fileEntity.path}');
        }else if (updatedContent1 != content) {
          fileEntity.writeAsStringSync(updatedContent1);
          print('Removed import from: ${fileEntity.path}');
        }
      } catch (e) {
        print('Error processing file: ${fileEntity.path}, Error: $e');
      }
    }
  });
}
