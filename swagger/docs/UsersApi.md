# swagger.api.UsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://trello.backend.tests.nekidaem.ru/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersCreateCreate**](UsersApi.md#usersCreateCreate) | **POST** /users/create/ | Create user
[**usersLoginCreate**](UsersApi.md#usersLoginCreate) | **POST** /users/login/ | Obtain JWT token
[**usersRefreshTokenCreate**](UsersApi.md#usersRefreshTokenCreate) | **POST** /users/refresh_token/ | Refreshed JWT token


# **usersCreateCreate**
> User usersCreateCreate(data)

Create user

Recieve data, create new user and return it. Also generate and return JWT token that can be used for authenticated requests

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UsersApi();
var data = new User(); // User | 

try { 
    var result = api_instance.usersCreateCreate(data);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersCreateCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersLoginCreate**
> JSONWebToken usersLoginCreate(data)

Obtain JWT token

Receives data, return token that can be used for authenticated requests

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UsersApi();
var data = new JSONWebToken(); // JSONWebToken | 

try { 
    var result = api_instance.usersLoginCreate(data);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersLoginCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**JSONWebToken**](JSONWebToken.md)|  | 

### Return type

[**JSONWebToken**](JSONWebToken.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRefreshTokenCreate**
> RefreshJSONWebToken usersRefreshTokenCreate(data)

Refreshed JWT token

Receives data adn returns a refreshed token (with new expiration) based on existing token. If 'orig_iat' field (original issued-at-time) is found, will first check if it's within expiration window, then copy it to the new token

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UsersApi();
var data = new RefreshJSONWebToken(); // RefreshJSONWebToken | 

try { 
    var result = api_instance.usersRefreshTokenCreate(data);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersRefreshTokenCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**RefreshJSONWebToken**](RefreshJSONWebToken.md)|  | 

### Return type

[**RefreshJSONWebToken**](RefreshJSONWebToken.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

