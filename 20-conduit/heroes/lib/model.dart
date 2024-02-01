import 'package:conduit/conduit.dart';

class MyModel extends ManagedObject<_MyModel> implements _MyModel {}

class _MyModel {
    @primaryKey
    int id;

    @Column(unique: true)
    String name;
}