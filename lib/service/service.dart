import 'package:angular/angular.dart';

@Injectable()
class Service{
  String _name;
  String _msg;
  String test;
  String name() => _name;
  String msg() => _msg;
  void setInfo( String name, String msg ) {
    this._name = name;
    this._msg = msg;
  }
}
