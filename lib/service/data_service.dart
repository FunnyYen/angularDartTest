import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';

@Injectable()
class DataService {
  Future<bool> confirm(String message) async =>
      window.confirm(message ?? 'Ok?');
}
