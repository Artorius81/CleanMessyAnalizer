import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetModelInfoCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "message": "success"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getModelInfo',
      apiUrl: 'https://verbally-striking-marten.ngrok-free.app/get_info',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? format(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.format''',
      ));
  static String? size(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.model_size''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? purpose(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.purpose''',
      ));
  static String? accuracy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accuracy''',
      ));
}

class GetTestImageCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "message": "success"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTestImage',
      apiUrl: 'https://verbally-striking-marten.ngrok-free.app/get_test_image',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class GetPredictCall {
  static Future<ApiCallResponse> call({
    String? link = '',
  }) async {
    final ffApiRequestBody = '''
{
  "link": "$link"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getPredict',
      apiUrl: 'https://verbally-striking-marten.ngrok-free.app/predict',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? output(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.output''',
      ));
}

class ImagePOSTCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'imagePOST',
      apiUrl: 'https://api.imageban.ru/v1',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer sSoVsFuwEOURhIRMcxXMVhf43O1dsJu4buV',
      },
      params: {
        'image': image,
        'album': "32453",
        'name': "photo_1",
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.data.link''',
      );
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
