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
  PopoutDialogComponent();
  void onClick() {
    showBasicDialog = false;
  }
}
