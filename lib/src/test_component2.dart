import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'popout_dialog_component.dart';
import 'package:angularDart/src/commom_test.dart';
import '../service/service.dart';

@Component(
  selector: 'test-component2',
  styleUrls: const ['login_page_component.css'],
  //templateUrl: 'login_page_component.html',
  template: '<button type="button" class="btn btn-default" (click)="btnClick()">test2</button>',
  directives: const [
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES,
    PopoutDialogComponent
  ],
)

class TestComponent2 extends CommonTest implements OnInit{
  final Service _service;
  TestComponent2(this._service);
  Future<Null> ngOnInit() async {
    _service.addCommonList(this);
  }

  @override
  printResult() {
    print("TestComponent2 printResult() !!");
  }

  btnClick() {}
}
