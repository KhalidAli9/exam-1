import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Response/CreateImage.dart';

class ReadData{
    Handler get handler{
      final router = Router()
      ..get("/show", CreateImage);

      return router;
    }
}