# swagger.api.CardsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://trello.backend.tests.nekidaem.ru/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cardsCreate**](CardsApi.md#cardsCreate) | **POST** /cards/ | Create new card
[**cardsDelete**](CardsApi.md#cardsDelete) | **DELETE** /cards/{id}/ | Delete card
[**cardsList**](CardsApi.md#cardsList) | **GET** /cards/ | Get cards
[**cardsPartialUpdate**](CardsApi.md#cardsPartialUpdate) | **PATCH** /cards/{id}/ | Update card


# **cardsCreate**
> CardCreateRecieve cardsCreate(data)

Create new card

Recieve data, create new card and return it

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CardsApi();
var data = new CardCreateRecieve(); // CardCreateRecieve | 

try { 
    var result = api_instance.cardsCreate(data);
    print(result);
} catch (e) {
    print("Exception when calling CardsApi->cardsCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**CardCreateRecieve**](CardCreateRecieve.md)|  | 

### Return type

[**CardCreateRecieve**](CardCreateRecieve.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cardsDelete**
> cardsDelete(id)

Delete card

Delete user card

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CardsApi();
var id = 56; // int | A unique integer value identifying this card.

try { 
    api_instance.cardsDelete(id);
} catch (e) {
    print("Exception when calling CardsApi->cardsDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this card. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cardsList**
> List<CardCreateRecieve> cardsList(row)

Get cards

Return list of the user cards sorted by row and seq_num

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CardsApi();
var row = row_example; // String | You can filter a cards by row

try { 
    var result = api_instance.cardsList(row);
    print(result);
} catch (e) {
    print("Exception when calling CardsApi->cardsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **row** | **String**| You can filter a cards by row | [optional] 

### Return type

[**List<CardCreateRecieve>**](CardCreateRecieve.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cardsPartialUpdate**
> CardUpdateDelete cardsPartialUpdate(id, data)

Update card

When you update card row or seq_num, other cards in current and new row will be sorted like this  [1].....[5].....|.....[1].....[5]  [2] ▶ [6].....|.....[3].....[2]  [3].....[7].....|.....[4].....[6]  [4]..............|..............[7]

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CardsApi();
var id = 56; // int | A unique integer value identifying this card.
var data = new CardUpdateDelete(); // CardUpdateDelete | 

try { 
    var result = api_instance.cardsPartialUpdate(id, data);
    print(result);
} catch (e) {
    print("Exception when calling CardsApi->cardsPartialUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this card. | 
 **data** | [**CardUpdateDelete**](CardUpdateDelete.md)|  | 

### Return type

[**CardUpdateDelete**](CardUpdateDelete.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

