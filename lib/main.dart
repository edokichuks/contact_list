
import 'package:contact_list/src/model/contact.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/constant/contact_key.dart';
import 'src/model/relationship.dart';
import 'src/ui/contact_app.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter<Contact>(ContactAdapter());
  Hive.registerAdapter(RelationshipAdapter());

  await Hive.openBox<Contact>(contactAppBox);
  runApp(const ContactApp());
}
