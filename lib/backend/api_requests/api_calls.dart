import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TonCall {
  static Future<ApiCallResponse> call({
    String? tokenValue =
        'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsic29tZV93YWxsZXQiXSwiZXhwIjoxODE2MTc4NDIyLCJpc3MiOiJAdG9uYXBpX2JvdCIsImp0aSI6Ik9XQ0ZHMlhWVVJCUTJYU1hGRFNSN0FLSSIsInNjb3BlIjoic2VydmVyIiwic3ViIjoidG9uYXBpIn0.fb1_bzCjW1hylExFNdQGW4DJp7ZrAgQeFqRtxIfR4eGjrdtE9UnDCK4YyzE9U_DzKt84GoErBtisCBD9F2QQDg',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TON',
      apiUrl:
          'https://tonapi.io/v1/nft/getItemsByOwnerAddress?account=EQDWfTV0XtuUrRYF8BqOm1U2yr3axYlpvxxnGXyx2nwIypM3',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${tokenValue}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
