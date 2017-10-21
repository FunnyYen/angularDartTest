import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import '../service/service.dart';
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

class GridComponent implements OnInit{
  final Service _service;
  String name, msg;
  GridComponent(this._service);

  Future<Null> ngOnInit() async {
    name = _service.name();
    msg = _service.msg();
  }
}
