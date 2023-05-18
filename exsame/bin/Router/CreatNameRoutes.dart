import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Response/CreateImage.dart';
import '../Response/acceptEmailAndPassword.dart';
import '../Response/createNameAgeAddress.dart';

class CreatNameRoutes{
    Handler get handler{
      final router = Router()
      ..post("/wright_data", createNameAgeAddress);

      return router;
    }
}
