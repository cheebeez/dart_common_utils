/*
 *  system.dart
 *
 *  Created by Ilya Chirkunov <xc@yar.net> on 24.04.2022.
 */

import 'dart:io';

class System {
  static void die(String message) {
    stdout.write('$message\n');
    exit(0);
  }
}
