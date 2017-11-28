import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';
import '../data/hero.dart';
const List<String> _powers = const [
  'Really Smart',
  'Super Flexible',
  'Super Hot',
  'Weather Changer'
];
@Component(
  selector: 'login_page',
  templateUrl: 'login_page_component.html',
  directives: const [
    CORE_DIRECTIVES,
    formDirectives,
    materialInputDirectives],
)
class LoginPageComponent {
  Hero model = new Hero(18, 'Dr IQ', _powers[0], 'Chuck Overstreet');
  bool submitted = false;
  List<String> get powers => _powers;
  void onSubmit() => submitted = true;
  /// Returns a map of CSS class names representing the state of [control].
  Map<String, bool> setCssValidityClass(NgControl control) {
    final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
    return {validityClass: true};
  }
  void clear() {
    model.name = '';
    model.power = _powers[0];
    model.alterEgo = '';
  }

  @ViewChild('materialInput')
  MaterialInputComponent materialInput;
  btnClick() {
    materialInput.inputText = "erorrrr msggggggg";
    materialInput.error = "erorrrr msggggggg";
  }

  inputChange() {
    print("inputChange");
  }

  inputKeyPress(String event) {
    print(event);
    print("inputKeyPress");
  }

}
