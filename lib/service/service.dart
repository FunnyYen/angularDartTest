import 'package:angular/angular.dart';
import 'package:angularDart/src/commom_test.dart';
@Injectable()
class Service{
  String _name;
  String _msg;
  String test;
  String name() => _name;
  String msg() => _msg;
  List<Object> callBackList = [];
  List<CommonTest> commonTestList = [];
  void setInfo( String name, String msg ) {
    this._name = name;
    this._msg = msg;
  }

  void addCommonList(CommonTest obj)
  {
    commonTestList.add(obj);
  }

  void loopCommonTest()
  {
    for( CommonTest test in commonTestList )
    {
      test.printResult();
    }
  }

  void addCallBack(Object callBack)
  {
    callBackList.add(callBack);
  }

  void loopCallBack()
  {
    for(Object callback in callBackList)
    {
      callback("call back from service!!!");
    }
  }
}
