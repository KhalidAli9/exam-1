

import 'dart:ffi';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'AcceptEmailAndPassword.dart';
import 'CreatNameRoutes.dart';
import 'ImageRoutes.dart';
import 'ReadData.dart';

class MainRoutes{

  Handler get handler{
    final router = Router()
    ..mount("/accept", AcceptEmailAndPassword().handler)
    ..get("/data",ReadData().handler)
    ..mount("/create", CreatNameRoutes().handler)
    ..mount("/desplay", ImageRoutes().handler);
    

    return router;
  }

  
}