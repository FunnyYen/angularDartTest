import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'popout_dialog_component.dart';
import 'package:angularDart/src/commom_test.dart';
import '../service/service.dart';

@Component(
  selector: 'test-component1',
  styleUrls: const ['login_page_component.css'],
  //templateUrl: 'login_page_component.html',
  template: '<button type="button" class="btn btn-default" (click)="btnClick()">test1</button>',
  directives: const [
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES,
    PopoutDialogComponent
  ],
)

class TestComponent1 extends CommonTest implements OnInit{
  final Service _service;
  TestComponent1(this._service);
  Future<Null> ngOnInit() async {
    _service.addCommonList(this);
  }

  @override
  printResult() {
    print("TestComponent1 printResult() !!");
  }

  btnClick() {}
}
