

import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:shelf/shelf.dart';

import 'package:http_parser/http_parser.dart';
CreateImage(Request request)async{
  try {
      final contentType = MediaType.parse(request.headers["Content-Type"]!);
      print(contentType.mimeType);

      if (contentType.mimeType != "image/png" && contentType.mimeType != "image/jpeg"){
      return Response.forbidden("unspaned media type");
    }
    final comparable = Completer<List<int>>();
    final chunks = <List<int>>[];
    final stream = request.read().listen((event) { 
      chunks.add(event);
    });

    //error handling and response messages for different scenarios  

    stream.onError((error){
      print(error);
      return Response.forbidden("error in loding");
    });

    stream.onDone(() {
      comparable.complete(chunks.expand((element) => element).toList());

    });

    final bytImage = await comparable.future;

    //creat random id as a name of image
    final id = Random().nextInt(9999999);

    final file = File("bin/image/$id.png");
    await file.writeAsBytes(bytImage);

    return Response.ok("creat post image");

  }catch(error){
    print(error);
  }
}

