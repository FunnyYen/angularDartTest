// Copyright (c) 2017, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import 'src/login_page_component.dart';
import 'src/grid_component.dart';
import 'service/service.dart';
@Component(
  selector: 'my-app',
  template: '<router-outlet></router-outlet>',
  styleUrls: const ['app_component.css'],
  directives:const [ROUTER_DIRECTIVES] ,
  providers: const [
    //popupBindings,
    Service
  ]
)

@RouteConfig(const [
  const Route(path: 'LoginPage', name: 'LoginPage', component: LoginPageComponent, useAsDefault:true),
  const Route(path: 'Grid', name: 'Grid', component: GridComponent)
])

class AppComponent {
  final Service _service;
  AppComponent(this._service);
  // Nothing here yet. All logic is in TodoListComponent.
}
