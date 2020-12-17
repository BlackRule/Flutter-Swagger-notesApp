part of swagger.api;

class CardsApi {
  final ApiClient apiClient;

  CardsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create new card
  ///
  /// Recieve data, create new card and return it
  Future<CardCreateRecieve> cardsCreate(CardCreateRecieve data) async {
    Object postBody = data;

    // verify required params are set
    if (data == null) {
      throw new ApiException(400, "Missing required param: data");
    }

    // create path and map variables
    String path = "/cards/".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'CardCreateRecieve')
          as CardCreateRecieve;
    } else {
      return null;
    }
  }

  /// Delete card
  ///
  /// Delete user card
  Future cardsDelete(int id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/cards/{id}/"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// Get cards
  ///
  /// Return list of the user cards sorted by row and seq_num
  Future<List<CardCreateRecieve>> cardsList({String row}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/cards/".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (row != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "row", row));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      var t = response.body; //TODO encoding!
      return (apiClient.deserialize(
              utf8.decode(t.runes.toList()), 'List<CardCreateRecieve>') as List)
          .map((item) => item as CardCreateRecieve)
          .toList();
    } else {
      return null;
    }
  }

  /// Update card
  ///
  /// When you update card row or seq_num, other cards in current and new row will be sorted like this  [1].....[5].....|.....[1].....[5]  [2] ▶ [6].....|.....[3].....[2]  [3].....[7].....|.....[4].....[6]  [4]..............|..............[7]
  Future<CardUpdateDelete> cardsPartialUpdate(
      int id, CardUpdateDelete data) async {
    Object postBody = data;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }
    if (data == null) {
      throw new ApiException(400, "Missing required param: data");
    }

    // create path and map variables
    String path = "/cards/{id}/"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'CardUpdateDelete')
          as CardUpdateDelete;
    } else {
      return null;
    }
  }
}
