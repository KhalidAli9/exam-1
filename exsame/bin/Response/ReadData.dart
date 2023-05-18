
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Models/model.dart';

ReadData(Request _ , String id)async{

  try{
      int numberOfIndex = int.parse(id);
      File mayfile = File("emailAndPassword.json");
      final Map content = json.decode(await mayfile.readAsString());


      print(content);
  
      
      return Response(json.encode(mayfile.readAsString()) as int, headers:{"Contrnt-Type": "Applecation/json"});


  }catch (error){
    print(error);
      return Response.ok("sory not found");
  }
}
