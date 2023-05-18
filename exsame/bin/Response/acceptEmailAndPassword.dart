

import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Models/model.dart';



 acceptEmailAndPassword(Request request) async{ 
  try{

      final body = json.decode(await request.readAsString());

      File myfile = File('emailAndPassword.json');
      final content = await myfile.readAsString();
      if (content == body){
        Response.ok("the email and password are confirm");
      }
      else{
        Response.notFound("the email or password are not avilible");
      }
      print(content);
  }
  catch(error){
    print(error);

    return Response.notFound("email and not found");
  }



}