import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../service/service.dart';
import 'popout_dialog_component.dart';

@Component(
  selector: 'login-page',
  styleUrls: const ['login_page_component.css'],
  templateUrl: 'login_page_component.html',
  directives: const [
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES,
    PopoutDialogComponent
  ],
)

class LoginPageComponent {
  final Service _service;
  final Router _router;
  bool showDialog = false;
  LoginPageComponent(this._service, this._router);
  void btnClick() {
    showDialog = true;
  }
  void onClick() {
    _service.setInfo("Jack Wang", "I click the close btn");
    _router.navigate([
        'Grid'
      ]);
  }
}
