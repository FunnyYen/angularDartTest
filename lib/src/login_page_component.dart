import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../service/service.dart';
import '../service/dialogService.dart';
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

class LoginPageComponent implements OnActivate,
                                    OnDeactivate,
                                    CanDeactivate,
                                    CanReuse,
                                    OnInit {
  final Service _service;
  final Router _router;
  bool showDialog = false;
  final DialogService _dialogSvc;
  LoginPageComponent(this._service, this._dialogSvc,this._router);
  Future<Null> ngOnInit() async {
    //showDialog = true;
  }


  void dialogClosed() {
    showDialog = false;
  }

  void btnClick() {
    _service.setInfo("Jack Wang", "I click the close btn");
    _router.navigate([
        'Grid', {'text':'from router para'}
      ]);
  }

  @override
  FutureOr<bool> routerCanReuse(next, prev) => true;

  @override
  void routerOnActivate(next, prev) {
    print('Activating ${next.routeName} ${next.urlPath}');
  }

  @override
  void routerOnDeactivate(next, prev) {
    print('Deactivating ${prev.routeName} ${prev.urlPath}');
  }

  @override
  FutureOr<bool> routerCanDeactivate(next, prev) => _dialogSvc.confirm('Discard changes?');
  //FutureOr<bool> routerCanDeactivate(next, prev) => false?true as FutureOr<bool> : _dialogSvc.confirm('Discard changes?');
}
