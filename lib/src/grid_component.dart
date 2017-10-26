import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import '../service/service.dart';
import '../service/dialogService.dart';
@Component(
  selector: 'grid-page',
  styleUrls: const ['grid_component.css'],
  templateUrl: 'grid_component.html',
  directives: const [
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES,
  ],
  //providers: const [Service]
)

class GridComponent implements OnInit {
  final Service _service;
  final DialogService _dialogSvc;
  String name, msg, routerTxt;
  final RouteParams _routeParams;
  GridComponent(this._service, this._dialogSvc, this._routeParams);
  List<Map> objList = new List<Map>();

  Future<Null> ngOnInit() async {
    name = _service.name();
    msg = _service.msg();
    routerTxt = _routeParams.get('text');
    print('OnInit');

    for( int i = 0; i < 20; i++ )
    {
      Map map = new Map();
      map['name'] = "aaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbccccccccccaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbccccccccccaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbccccccccccaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbccccccccccaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbccccccccccaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbccccccccccaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbccccccccccaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbccccccccccaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbccccccccccaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbcccccccccc";
      objList.add(map);
    }

    print('2');
  }
}
