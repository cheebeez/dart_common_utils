/*
 *  string_extension.dart
 *
 *  Created by Ilya Chirkunov <xc@yar.net> on 29.01.2022.
 */

extension StringExtension on String {
  String between(String start, String end) {
    if (start.isEmpty && end.isEmpty) return '';

    final startIndex = indexOf(start);
    if (startIndex == -1) return '';

    final endIndex =
        end.isEmpty ? length : indexOf(end, startIndex + start.length);
    if (endIndex == -1) return '';

    return substring(startIndex + start.length, endIndex);
  }

  String betweenTag(String tag) {
    if (tag.isEmpty) return '';
    return between('<$tag>', '</$tag>');
  }
}
