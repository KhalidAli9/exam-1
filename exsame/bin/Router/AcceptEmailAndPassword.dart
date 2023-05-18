

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Response/CreateImage.dart';
import '../Response/acceptEmailAndPassword.dart';

class AcceptEmailAndPassword{
    Handler get handler{
      final router = Router()
      ..post("/email_password", acceptEmailAndPassword);

      return router;
    }
}