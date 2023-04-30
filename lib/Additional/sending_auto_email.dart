import 'dart:convert';
import 'package:http/http.dart' as http;

Future sendingAutomatedEmail({required String name, String email = 'empty', String number = 'empty',required String message,}) async {
  const serviceId = 'service_tttjnx9';
  const templateId = 'template_advtiwn';
  const userId = 'hpixqRGia2tdBekpg';

  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
    },
    body: json.encode({
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'user_name': name,
        'user_email': email,
        'user_number': number,
        'user_message':message,
      },
    }),
  );
  print(response.body);
}