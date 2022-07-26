/*
 *  file_extension.dart
 *
 *  Created by Ilya Chirkunov <xc@yar.net> on 24.04.2022.
 */

import 'dart:io';

extension FileExtension on File {
  File get adaptPath => File(path.replaceAll('/', Platform.pathSeparator));

  bool? replaceContent(String from, String replace) {
    if (!existsSync()) return null;

    var content = readAsStringSync();
    if (!content.contains(from)) return false;

    content = content.replaceAll(from, replace);
    writeAsStringSync(content, flush: true);

    return true;
  }

  void deleteIfExistsSync() {
    if (existsSync()) deleteSync();
  }
}
