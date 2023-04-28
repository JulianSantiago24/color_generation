import 'package:get/get.dart';

/// Message dictionary
class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'start': 'Let´s start',
      'hello': 'Hello there',
      'back': 'Back',
      'snackbar_title': 'Time to say',
      'snackbar_message': 'Thanks and goodbye',
    },
    'es_CO': {
      'start': 'Empecemos',
      'hello': 'Hola!',
      'back': 'Atras',
      'snackbar_title': 'Es hora de decir',
      'snackbar_message': 'Gracias y hasta pronto',
    },
  };
}
