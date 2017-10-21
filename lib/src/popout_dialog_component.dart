import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'popout-dialog',
  styleUrls: const ['popout_dialog_component.css'],
  templateUrl: 'popout_dialog_component.html',
  directives: const [
    CORE_DIRECTIVES,
    AutoDismissDirective,
    AutoFocusDirective,
    MaterialButtonComponent,
    MaterialDialogComponent,
    MaterialIconComponent,
    ModalComponent,
  ],
  providers: const [popupBindings]
)

class PopoutDialogComponent {
  @Input()
  bool showBasicDialog = false;
  final _dialogClosed = new StreamController<Null>();
  @Output()
  Stream<Null> get dialogClosed => _dialogClosed.stream;
  PopoutDialogComponent();
  void onClick() {
    //showBasicDialog = false;
    _dialogClosed.add(Null);
  }
}
