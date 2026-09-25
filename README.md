# Book_FlutterCursor

単一画面の天気予報アプリです。通信契約は Open-Meteo の `GET /v1/forecast` だけです。開発時の既定は実 API、テストは同じ JSON のフィクスチャを使います。

## 準備

```sh
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

## テスト

通常のテストはネットワークに出ません。

```sh
flutter test
```

実 API への疎通確認は任意です。オフラインでは失敗します。

```sh
flutter test --tags network
```

## アプリの起動

既定は Open-Meteo です。

```sh
flutter run
```

ローカルの互換モックを使うときは、先にサーバーを起動します。

```sh
cd mock_server
dart pub get
dart run bin/server.dart
```

別ターミナルでベース URL を差し替えます。

```sh
# iOS シミュレータ
flutter run --dart-define=API_BASE_URL=http://127.0.0.1:8080

# Android エミュレータ
flutter run --dart-define=API_BASE_URL=http://10.0.2.2:8080
```

429 / 503 の再現はモックに `fail=429` または `fail=503` を付けます。アプリ本体はこのクエリを付けません。
