# swagger
API for Kanban table, like trello.com

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Build package: io.swagger.codegen.languages.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com//.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *https://trello.backend.tests.nekidaem.ru/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CardsApi* | [**cardsCreate**](docs//CardsApi.md#cardscreate) | **POST** /cards/ | Create new card
*CardsApi* | [**cardsDelete**](docs//CardsApi.md#cardsdelete) | **DELETE** /cards/{id}/ | Delete card
*CardsApi* | [**cardsList**](docs//CardsApi.md#cardslist) | **GET** /cards/ | Get cards
*CardsApi* | [**cardsPartialUpdate**](docs//CardsApi.md#cardspartialupdate) | **PATCH** /cards/{id}/ | Update card
*UsersApi* | [**usersCreateCreate**](docs//UsersApi.md#userscreatecreate) | **POST** /users/create/ | Create user
*UsersApi* | [**usersLoginCreate**](docs//UsersApi.md#userslogincreate) | **POST** /users/login/ | Obtain JWT token
*UsersApi* | [**usersRefreshTokenCreate**](docs//UsersApi.md#usersrefreshtokencreate) | **POST** /users/refresh_token/ | Refreshed JWT token


## Documentation For Models

 - [CardCreateRecieve](docs//CardCreateRecieve.md)
 - [CardUpdateDelete](docs//CardUpdateDelete.md)
 - [JSONWebToken](docs//JSONWebToken.md)
 - [RefreshJSONWebToken](docs//RefreshJSONWebToken.md)
 - [User](docs//User.md)


## Documentation For Authorization


## Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

contact@localhost

