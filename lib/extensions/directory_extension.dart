/*
 *  directory_extension.dart
 *
 *  Created by Ilya Chirkunov <xc@yar.net> on 09.07.2022.
 */

import 'dart:io';

extension DirectoryExtension on Directory {
  Directory get adaptPath =>
      Directory(path.replaceAll('/', Platform.pathSeparator));

  void deleteIfExistsSync({bool recursive = false}) {
    if (existsSync()) deleteSync(recursive: recursive);
  }
}
