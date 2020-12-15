# bloc_login

The idea is to use the DRF to create APIs which can be called by the flutter application. Most of the tutorials I have seen only talk about doing it with Firebase. Since we already will be using PostgreSQL for the Django, let us use that as our server DB and using SQLite with the Flutter Application to store just the Auth token and Username.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
-----
https://medium.com/flutter-community/flutter-login-with-rest-api-and-sqlite-using-blocs-61866fafc844
api_connection (will contain the code to communicate with our API)
common (Will contain utility widgets like loading indicator)
dao (Will contain a helper file in order to communicate with our SQLite database)
model (Will contain schema of our database)
repository (Will act as a bridge between our API, blocs, and database)
splash (Will contain splash screen code)
login (Will contain login form and other details pertaining to it)
database (Will contain files in order to initialize DB and create the table to start inserting data)
home (Will contain our main UI)