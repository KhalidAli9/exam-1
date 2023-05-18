



import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
List<Map> Info = [];

createNameAgeAddress(Request request)async{

  try{
      if(Info.length <=2){
        final body = await request.readAsString();
        final Map jsonBody = json.decode(body);
        Info.add(jsonBody);
        final file = File("emailAndPassword");
        file.writeAsStringSync(body);
        return Response.ok("Updated");

      }else{
        return Response.ok("At least 3 keys must be entered");
      }
  }catch(error){
    print(error);
  }
  


  

  

}