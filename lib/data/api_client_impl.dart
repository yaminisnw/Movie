import '../core/api/api_client.dart';

class ApiClientImpl extends ApiClient {
  static String _default = '';

  final Map<String, String> _headers = <String, String>{
    'Content-Type': 'application/json',
    'Authorization': _default,
  };

  @override
  void setAuthorizationKey(String? key) {
    _default = key ?? '';
    _headers['Authorization'] = key ?? '';
  }

  void setLanguage(String? lang) {
    if (lang != null) {
      _headers['lang'] = lang;
      _headers['locale'] = lang;
    } else {
      _headers.remove('lang');
      _headers.remove('locale');
    }
  }

  @override
  Map<String, String> get defaultHeaders => <String, String>{
    ..._headers,
    ...super.defaultHeaders,
  };
}