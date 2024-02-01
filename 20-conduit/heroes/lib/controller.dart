import 'package:conduit/conduit.dart';
import 'model.dart';

class MyController extends ResourceController {
    MyController(this.context);

    final ManagedContext context;

    MyController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAll() async {
    final query = Query<MyModel>(context);
    final results = await query.fetch();
    return Response.ok(results);
  }

  @Operation.get('id')
  Future<Response> getOne(@Bind.path('id') int id) async {
    final query = Query<MyModel>(context)..where((m) => m.id).equalTo(id);
    final result = await query.fetchOne();
    if (result == null) {
      return Response.notFound();
    }
    return Response.ok(result);
  }

  @Operation.post()
  Future<Response> create(@Bind.body() MyModel input) async {
    final query = Query<MyModel>(context)..values = input;
    final inserted = await query.insert();
    return Response.ok(inserted);
  }

  @Operation.put('id')
  Future<Response> update(@Bind.path('id') int id, @Bind.body() MyModel input) async {
    final query = Query<MyModel>(context)
      ..where((m) => m.id).equalTo(id)
      ..values = input;
    final updated = await query.updateOne();
    if (updated == null) {
      return Response.notFound();
    }
    return Response.ok(updated);
  }

  @Operation.delete('id')
  Future<Response> delete(@Bind.path('id') int id) async {
    final query = Query<MyModel>(context)..where((m) => m.id).equalTo(id);
    final deleted = await query.delete();
    if (deleted == 0) {
      return Response.notFound();
    }
    return Response.ok(deleted);
  }
}