// Copyright (c) 2017, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angularDart/app_component.dart';
import 'package:angular_router/angular_router.dart';

import 'package:dartson/dartson.dart';
import 'package:angularDart/data/test_data.dart';

Future<TestData> queryTestData() async {
  var url = "http://localhost:8080/source/test_data.json";
  HttpRequest request = await HttpRequest.request(url);
  var dson = new Dartson.JSON();
  print(request.response.toString());
  TestData object = dson.decode(request.response.toString(), new TestData());
  return object;
}

main() async {
  // var dson = new Dartson.JSON();

  TestData object = await queryTestData();
  object.gloss.glossEntry.id = "new id";
  object.gloss.glossEntry.sortAs = "bubble sort";

  var dson = new Dartson.JSON();
  String testJson = dson.encode(object);
  print(testJson);
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    // Remove next line in production
    provide(LocationStrategy, useClass: HashLocationStrategy)]);
}
