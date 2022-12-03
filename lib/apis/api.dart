import 'dart:convert';

import 'package:flutter_topics/number_fact/number_fact.dart';
import 'package:http/http.dart' as http;

String uri = 'http://numbersapi.com/';

//function for get data from server
Future<NumberFact> getNUmberFact({required int number}) async {
  final response = await http.get(Uri.parse('$uri$number?json'));
  final bosyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
  final data = NumberFact.fromJson(bosyAsJson);
  return data;
}




