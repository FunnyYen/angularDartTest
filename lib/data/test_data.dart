library example;

import 'package:dartson/dartson.dart';

@Entity()
class TestData {
  String data;
  List<Info> infoList;
  Gloss gloss;
}

@Entity()
class Info {
  String name;
  String phone;
  int age;
}

@Entity()
class Gloss {
  GlossEntry glossEntry;
}

@Entity()
class GlossEntry {
  String id;
  String sortAs;
  String glossTerm;
  String acronym;
  String abbrev;
  String glossSee;
  GlossDef glossDef;
}

@Entity()
class GlossDef {
  String para;
  List<String> glossSeeAlso;
}
