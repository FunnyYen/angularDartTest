// Copyright (c) 2017, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
import 'package:dartson/dartson.dart';
import 'package:angularDart/data/test_data.dart';
import 'package:angular_router/angular_router.dart';

import 'src/login_page_component.dart';
import 'src/grid_component.dart';
import 'service/service.dart';
import 'service/data_service.dart';
import 'service/dialogService.dart';
@Component(
  selector: 'my-app',
  template: '<router-outlet></router-outlet>',
  //styleUrls: const ['app_component.css'],
  directives:const [ROUTER_DIRECTIVES] ,
  providers: const [
    //Service,
    //DialogService
  ]
)

@RouteConfig(const [
  const Redirect(path: '/', redirectTo: const ['LoginPage']),
  const Route(path: 'LoginPage', name: 'LoginPage', component: LoginPageComponent),
  const Route(path: 'Grid', name: 'Grid', component: GridComponent)
])

class AppComponent {
}
