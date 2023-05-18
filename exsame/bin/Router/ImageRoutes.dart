

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Response/CreateImage.dart';

class ImageRoutes{
    Handler get handler{
      final router = Router()
      ..post("/image", CreateImage);

      return router;
    }
}