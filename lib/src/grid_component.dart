import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import '../service/service.dart';
import '../service/dialogService.dart';
@Component(
  selector: 'grid-page',
  //styleUrls: const ['popout_dialog_component.css'],
  templateUrl: 'grid_component.html',
  directives: const [
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES,
  ],
  //providers: const [Service]
)

class GridComponent implements OnActivate,
                               OnDeactivate,
                               CanDeactivate,
                               CanReuse,
                               OnDestroy,
                               OnInit {
  final Service _service;
  final DialogService _dialogSvc;
  String name, msg, routerTxt;
  final RouteParams _routeParams;
  GridComponent(this._service, this._dialogSvc, this._routeParams);

  Future<Null> ngOnInit() async {
    name = _service.name();
    msg = _service.msg();
    routerTxt = _routeParams.get('text');
    print('OnInit');
  }

  Future<Null> ngOnDestroy() async {
    print('OnDestroy');
  }

  @override
  FutureOr<bool> routerCanReuse(next, prev) => true;

  @override
  void routerOnActivate(next, prev) {
    print('Activating prev ${prev.routeName} ${prev.urlPath}');
    print('Activating next ${next.routeName} ${next.urlPath}');
  }

  @override
  void routerOnDeactivate(next, prev) {
    print('Deactivating prev ${prev.routeName} ${prev.urlPath}');
    print('Deactivating next ${next.routeName} ${next.urlPath}');
  }

  @override
  FutureOr<bool> routerCanDeactivate(next, prev) => _dialogSvc.confirm('Discard changes?');
}
