import 'package:http/http.dart' as http;

// Future<http.Response> fetch() {
//   return http.get(Uri.parse('http://localhost:3000/api/v1/auth'));
// }

class Data_get {
  final String type;
  final String name;
  final String mail;

  const Data_get({
    required this.type,
    required this.name,
    required this.mail,
  });

  factory Data_get.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'type': String type,
        'name': String name,
        'mail': String mail,
      } =>
        Data_get(mail: mail, type: type, name: name),
      _ => throw const FormatException("failed to load"),
    };
  }
}
